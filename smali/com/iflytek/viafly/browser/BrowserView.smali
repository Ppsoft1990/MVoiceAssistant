.class public final Lcom/iflytek/viafly/browser/BrowserView;
.super Landroid/widget/LinearLayout;
.source "BrowserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;,
        Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final CLICK_WAIT_TIME:I = 0x1f4

.field private static final MSG_HIDDEN_PROGRESSBAR:I = 0x1

.field static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field static final SCHEME_WTAI:Ljava/lang/String; = "wtai://wp/"

.field static final SCHEME_WTAI_AP:Ljava/lang/String; = "wtai://wp/ap;"

.field static final SCHEME_WTAI_MC:Ljava/lang/String; = "wtai://wp/mc;"

.field static final SCHEME_WTAI_SD:Ljava/lang/String; = "wtai://wp/sd;"

.field private static final TAG:Ljava/lang/String; = "BrowserMainView"


# instance fields
.field imHelper:Lcom/iflytek/viafly/im/IMHelper;

.field private isInject:Z

.field private last_click_time:J

.field private mBrowserComponentsMgr:Lcom/iflytek/viafly/browser/BrowserComponentsMgr;

.field private mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

.field private mBrowserNaviBtnHome:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mBrowserNaviBtnRefresh:Landroid/widget/RelativeLayout;

.field private mBrowserTitle:Lcom/iflytek/base/skin/customView/XTextView;

.field private mBrowserTitleBar:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

.field private mBtnRefresh:Lcom/iflytek/base/skin/customView/XImageView;

.field private mComponentHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/mmp/core/componentsManager/Components;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mExceptionView:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mIsGoBack:Z

.field private mIsPaused:Z

.field private mIsShowProgressBar:Z

.field private mLastClickId:I

.field private mLayoutWebview:Landroid/widget/LinearLayout;

.field private mLoadingProgressBar:Lcom/iflytek/base/skin/customView/DefineProgressView;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebSettings:Landroid/webkit/WebSettings;

.field private mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

.field private needClearCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/browser/BrowserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserRunData;

    invoke-direct {v0}, Lcom/iflytek/viafly/browser/BrowserRunData;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLastClickId:I

    .line 127
    iput-boolean v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsGoBack:Z

    .line 129
    iput-boolean v3, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsShowProgressBar:Z

    .line 131
    iput-boolean v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->isInject:Z

    .line 257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->last_click_time:J

    .line 507
    iput-boolean v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsPaused:Z

    .line 538
    iput-boolean v3, p0, Lcom/iflytek/viafly/browser/BrowserView;->needClearCache:Z

    .line 1132
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/browser/BrowserView$1;-><init>(Lcom/iflytek/viafly/browser/BrowserView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mHandler:Landroid/os/Handler;

    .line 141
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mContext:Landroid/content/Context;

    .line 142
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/browser/BrowserView;->setView(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserComponentsMgr;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserComponentsMgr:Lcom/iflytek/viafly/browser/BrowserComponentsMgr;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/iflytek/viafly/browser/BrowserView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsShowProgressBar:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/iflytek/viafly/browser/BrowserView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/browser/BrowserView;->setLoadProgress(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/iflytek/viafly/browser/BrowserView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserTitleBar:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/iflytek/viafly/browser/BrowserView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/iflytek/viafly/browser/BrowserView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/DefineProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLoadingProgressBar:Lcom/iflytek/base/skin/customView/DefineProgressView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/browser/BrowserView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->stopSpeak()V

    return-void
.end method

.method static synthetic access$302(Lcom/iflytek/viafly/browser/BrowserView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/iflytek/viafly/browser/BrowserView;->isInject:Z

    return p1
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserRunData;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/browser/BrowserView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->onLoadingStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/viafly/browser/BrowserViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/browser/BrowserView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->onFinishStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mExceptionView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/iflytek/viafly/browser/BrowserView;)Lcom/iflytek/base/skin/customView/XTextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserTitle:Lcom/iflytek/base/skin/customView/XTextView;

    return-object v0
.end method

.method private callHiddenWebViewMethod(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 529
    :try_start_0
    const-string/jumbo v2, "BrowserMainView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "------>> callHiddenWebViewMethod()|method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-class v2, Landroid/webkit/WebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 531
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 534
    const-string/jumbo v2, "BrowserMainView"

    const-string/jumbo v3, "------>> callHiddenWebViewMethod() -> Exception"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearCach()V
    .locals 3

    .prologue
    .line 575
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "clearCach()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-nez v1, :cond_0

    .line 579
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "------->> mWebView=null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-boolean v1, v1, Lcom/iflytek/viafly/browser/BrowserRunData;->isLoading:Z

    if-eqz v1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->stopLoading()V

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->clearHistory()V

    .line 585
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "---------->> WebView:clearHistory()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->clearFormData()V

    .line 587
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "---------->> WebView:clearFormData()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->destroy()V

    .line 591
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "---------->> WebView:destroy()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BrowserMainView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createExceptionView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004a

    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLayoutWebview:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 251
    .local v0, "exceptionView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    const v1, 0x7f0b029d

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v1, 0x7f0b029e

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    return-object v0
.end method

.method private loadBeforePage()V
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLastClickId:I

    packed-switch v0, :pswitch_data_0

    .line 338
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "goBack()"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->goBack()V

    .line 344
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLastClickId:I

    .line 345
    return-void

    .line 332
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "goForward()"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->goForward()V

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private onFinishStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 408
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "onFinishStatus()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iput-boolean v2, v0, Lcom/iflytek/viafly/browser/BrowserRunData;->isLoading:Z

    .line 414
    iput-boolean v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsGoBack:Z

    .line 416
    return-void
.end method

.method private onLoadingStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 351
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "onLoadingStatus()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iput-boolean v2, v0, Lcom/iflytek/viafly/browser/BrowserRunData;->isLoading:Z

    .line 357
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->requestFocus()Z

    .line 360
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-object v0, v0, Lcom/iflytek/viafly/browser/BrowserRunData;->startUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-object v0, v0, Lcom/iflytek/viafly/browser/BrowserRunData;->startUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-object v0, v0, Lcom/iflytek/viafly/browser/BrowserRunData;->startUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserNaviBtnHome:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserNaviBtnRefresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBtnRefresh:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setEnabled(Z)V

    .line 369
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserNaviBtnHome:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserNaviBtnRefresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBtnRefresh:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private registBaseComponents()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/mmp/core/componentsManager/Components;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1201
    .local v1, "componentHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessConstants;->getBaseComponentNames()Ljava/util/HashMap;

    move-result-object v3

    .line 1202
    .local v3, "componentsNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1203
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1204
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1205
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1207
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1209
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/business/components/AbsComponents;

    .line 1210
    .local v2, "components":Lcom/iflytek/framework/business/components/AbsComponents;
    iget-object v7, p0, Lcom/iflytek/viafly/browser/BrowserView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v2, v7, v8}, Lcom/iflytek/framework/business/components/AbsComponents;->initComponents(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    .line 1211
    iget-object v8, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserComponentsMgr:Lcom/iflytek/viafly/browser/BrowserComponentsMgr;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7, v2}, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 1212
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1213
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "components":Lcom/iflytek/framework/business/components/AbsComponents;
    :catch_0
    move-exception v4

    .line 1214
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "BrowserMainView"

    const-string/jumbo v8, "registBaseComponents"

    invoke-static {v7, v8, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1218
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    return-object v1
.end method

.method private setLoadProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/16 v2, 0x64

    .line 1094
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLoadingProgressBar:Lcom/iflytek/base/skin/customView/DefineProgressView;

    if-eqz v0, :cond_1

    .line 1095
    if-lez p1, :cond_1

    if-gt p1, v2, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLoadingProgressBar:Lcom/iflytek/base/skin/customView/DefineProgressView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/DefineProgressView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLoadingProgressBar:Lcom/iflytek/base/skin/customView/DefineProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/DefineProgressView;->setVisibility(I)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLoadingProgressBar:Lcom/iflytek/base/skin/customView/DefineProgressView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/DefineProgressView;->setProgress(I)V

    .line 1100
    if-ne p1, v2, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1105
    :cond_1
    return-void
.end method

.method private setView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x8

    .line 174
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "setView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 178
    const v0, 0x7f0b029f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/browser/BrowserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 179
    const v0, 0x7f0b02a0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/browser/BrowserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserTitleBar:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 181
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-direct {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 182
    const v0, 0x7f0b02a7

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/browser/BrowserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLayoutWebview:Landroid/widget/LinearLayout;

    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLayoutWebview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/browser/BrowserView;->setWebview(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/browser/BrowserView;->createExceptionView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mExceptionView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLayoutWebview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mExceptionView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mExceptionView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 190
    const v0, 0x7f0b02a3

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/browser/BrowserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserTitle:Lcom/iflytek/base/skin/customView/XTextView;

    .line 192
    const v0, 0x7f0b02a4

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/browser/BrowserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserNaviBtnRefresh:Landroid/widget/RelativeLayout;

    .line 193
    const v0, 0x7f0b02a5

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/browser/BrowserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBtnRefresh:Lcom/iflytek/base/skin/customView/XImageView;

    .line 196
    const v0, 0x7f0b02a1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/browser/BrowserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserNaviBtnHome:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 198
    const v0, 0x7f0b02a8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/browser/BrowserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/DefineProgressView;

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLoadingProgressBar:Lcom/iflytek/base/skin/customView/DefineProgressView;

    .line 199
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLoadingProgressBar:Lcom/iflytek/base/skin/customView/DefineProgressView;

    const v1, 0x7f02002b

    const v2, 0x7f02002a

    const v3, 0x7f020029

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/base/skin/customView/DefineProgressView;->setProgressBitMapId(III)V

    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLoadingProgressBar:Lcom/iflytek/base/skin/customView/DefineProgressView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/DefineProgressView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserNaviBtnRefresh:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserNaviBtnHome:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void
.end method

.method private setWebview(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 212
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "setWebview()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/browser/BrowserView$MyWebViewClient;-><init>(Lcom/iflytek/viafly/browser/BrowserView;)V

    .line 215
    .local v0, "wvc":Landroid/webkit/WebViewClient;
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 218
    new-instance v1, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/browser/BrowserView$MyWebChromeClient;-><init>(Lcom/iflytek/viafly/browser/BrowserView;)V

    iput-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 219
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 221
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebSettings:Landroid/webkit/WebSettings;

    .line 222
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 223
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 225
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 228
    new-instance v1, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;

    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-direct {v1, p1, v2}, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserComponentsMgr:Lcom/iflytek/viafly/browser/BrowserComponentsMgr;

    .line 230
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->registBaseComponents()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mComponentHashMap:Ljava/util/HashMap;

    .line 231
    return-void
.end method

.method private showWebview()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mExceptionView:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopSpeak()V
    .locals 3

    .prologue
    .line 1224
    :try_start_0
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->l()Lpp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpp;->d(Lju;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1225
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->l()Lpp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpp;->c(Lju;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addJsInterface(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interfaceObject"    # Ljava/lang/Object;

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0, p2, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public disablePlatformNotifications()V
    .locals 0

    .prologue
    .line 1087
    return-void
.end method

.method public enablePlatformNotifications()V
    .locals 0

    .prologue
    .line 1083
    return-void
.end method

.method public existFullScreenIfNeed()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 376
    :cond_0
    return-void
.end method

.method public getBrowserTitleBar()Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserTitleBar:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method

.method public getComponents(Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mComponentHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/mmp/core/componentsManager/Components;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    return-object v0
.end method

.method public handleKeyBackEvent()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 385
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "handleKeyBackEvent()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    .line 388
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "handleKeyBackEvent() --> Now in full screen, exit fullScreen"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 401
    :goto_0
    return v0

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    iput-boolean v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsGoBack:Z

    .line 395
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->goBack()V

    .line 396
    const/4 v1, 0x4

    iput v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLastClickId:I

    .line 397
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "handleKeyBackEvent() --> webView can go back, so go back"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->stopSpeak()V

    goto :goto_0

    .line 401
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoBack()Z
    .locals 1

    .prologue
    .line 1174
    iget-boolean v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsGoBack:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-boolean v0, v0, Lcom/iflytek/viafly/browser/BrowserRunData;->isLoading:Z

    return v0
.end method

.method public loadDataPage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 487
    const-string/jumbo v0, "BrowserMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadDataPage() | data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebSettings:Landroid/webkit/WebSettings;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public loadJavaScript(Ljava/lang/String;)V
    .locals 3
    .param p1, "javascriptCode"    # Ljava/lang/String;

    .prologue
    .line 1179
    const-string/jumbo v0, "BrowserMainView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadJavaScript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    .line 1163
    return-void
.end method

.method public loadUrlPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-nez v1, :cond_0

    .line 436
    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-boolean v1, v1, Lcom/iflytek/viafly/browser/BrowserRunData;->isLoading:Z

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->stopLoading()V

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iput-boolean v3, v1, Lcom/iflytek/viafly/browser/BrowserRunData;->isLoading:Z

    .line 444
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    invoke-interface {v1, p1}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onPreLoadUrl(Ljava/lang/String;)V

    .line 448
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 450
    const-string/jumbo v1, "http://m.baidu.com/s?word="

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 453
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "---------->> CookieManager:removeAllCookie()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iput-object p1, v1, Lcom/iflytek/viafly/browser/BrowserRunData;->url:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->clearView()V

    .line 461
    if-eqz p2, :cond_6

    const-string/jumbo v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 462
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v2, "BASE64"

    invoke-static {p2, v2}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->postUrl(Ljava/lang/String;[B)V

    .line 467
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->onLoadingStatus()V

    .line 468
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    if-eqz v1, :cond_4

    .line 469
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-object v2, v2, Lcom/iflytek/viafly/browser/BrowserRunData;->url:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onPageStarted(Ljava/lang/String;)V

    .line 471
    :cond_4
    const-string/jumbo v1, "BrowserMainView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadUrlPage() | start loading page...| url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-object v3, v3, Lcom/iflytek/viafly/browser/BrowserRunData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_5
    :goto_2
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "loadUrlPage()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-object v2, v2, Lcom/iflytek/viafly/browser/BrowserRunData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 474
    :cond_7
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "loadUrlPage() | url=null"

    invoke-static {v1, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    if-eqz v1, :cond_5

    .line 478
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    invoke-interface {v1, v3}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onStartLoadError(I)V

    goto :goto_2
.end method

.method public loadUrlPageWithData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1122
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "loadUrlPageWithData"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-nez v0, :cond_0

    .line 1124
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 1127
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->reload()V

    .line 1128
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0b02a5

    .line 261
    const-string/jumbo v2, "BrowserMainView"

    const-string/jumbo v3, "-------------------->>> onClick()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/viafly/browser/BrowserView;->last_click_time:J

    sub-long v0, v2, v4

    .line 263
    .local v0, "interval":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 264
    const-string/jumbo v2, "BrowserMainView"

    const-string/jumbo v3, "-------------------->>> Click too much!"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->last_click_time:J

    .line 269
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsGoBack:Z

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 302
    :pswitch_1
    iput v6, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLastClickId:I

    .line 303
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->reload()V

    .line 304
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->showWebview()V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBtnRefresh:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XImageView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    iput v6, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLastClickId:I

    .line 275
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->stopSpeak()V

    .line 277
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-object v2, v2, Lcom/iflytek/viafly/browser/BrowserRunData;->startUrl:Ljava/lang/String;

    .line 278
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-object v3, v3, Lcom/iflytek/viafly/browser/BrowserRunData;->startUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->showWebview()V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->reload()V

    .line 284
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->showWebview()V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iget-boolean v2, v2, Lcom/iflytek/viafly/browser/BrowserRunData;->isLoading:Z

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserView;->stopLoading()V

    .line 288
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->loadBeforePage()V

    .line 289
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->showWebview()V

    goto :goto_0

    .line 295
    :pswitch_3
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    invoke-interface {v2}, Lcom/iflytek/viafly/browser/BrowserViewCallback;->onClose()Z

    goto :goto_0

    .line 309
    :pswitch_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lazo;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b029d
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->imHelper:Lcom/iflytek/viafly/im/IMHelper;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "kf"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->imHelper:Lcom/iflytek/viafly/im/IMHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/im/IMHelper;->onDestroy()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->imHelper:Lcom/iflytek/viafly/im/IMHelper;

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserView;->resumeTimers()V

    .line 562
    iget-boolean v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->needClearCache:Z

    if-eqz v0, :cond_2

    .line 563
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserView;->clearCach()V

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mLayoutWebview:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 568
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserComponentsMgr:Lcom/iflytek/viafly/browser/BrowserComponentsMgr;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;->onDestroy()V

    .line 569
    return-void
.end method

.method public pageBack()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->goBack()V

    .line 505
    :cond_0
    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 511
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "------>> pauseTimers()|reflect:webview.onPause() & CookieSyncManager.stopSync() & Webview.pauseTimers()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onPause"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/browser/BrowserView;->callHiddenWebViewMethod(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->pauseTimers()V

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsPaused:Z

    .line 516
    :cond_0
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->postUrl(Ljava/lang/String;[B)V

    .line 1167
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->reload()V

    .line 1171
    return-void
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 520
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "------>> resumeTimers()|reflect:webview.onResume() & CookieSyncManager.startSync() & Webview.resumeTimers()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const-string/jumbo v1, "onResume"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/browser/BrowserView;->callHiddenWebViewMethod(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->resumeTimers()V

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsPaused:Z

    .line 525
    :cond_0
    return-void
.end method

.method public saveWebviewData(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1112
    const-string/jumbo v1, "BrowserMainView"

    const-string/jumbo v2, "saveWebviewData"

    invoke-static {v1, v2}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1114
    .local v0, "list":Landroid/webkit/WebBackForwardList;
    return-object v0
.end method

.method public setBrowserTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public setBrowserViewCallback(Lcom/iflytek/viafly/browser/BrowserViewCallback;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/browser/BrowserViewCallback;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    .line 147
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .param p1, "downloadListener"    # Landroid/webkit/DownloadListener;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setNeedClearCacheOnDestroy(Z)V
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/iflytek/viafly/browser/BrowserView;->needClearCache:Z

    .line 542
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 0
    .param p1, "isShowProgressBar"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/iflytek/viafly/browser/BrowserView;->mIsShowProgressBar:Z

    .line 163
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 171
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 167
    return-void
.end method

.method public startSystemConponent(Ljava/lang/String;)V
    .locals 5
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 1184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1185
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1187
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1188
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1189
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BrowserMainView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startSystemBrowser() uriString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 422
    const-string/jumbo v0, "BrowserMainView"

    const-string/jumbo v1, "stopLoading()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->stopLoading()V

    .line 424
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iput-boolean v2, v0, Lcom/iflytek/viafly/browser/BrowserRunData;->isLoading:Z

    .line 425
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserView;->mBrowserData:Lcom/iflytek/viafly/browser/BrowserRunData;

    iput v2, v0, Lcom/iflytek/viafly/browser/BrowserRunData;->progress:I

    .line 426
    return-void
.end method
