.class public Lcom/iflytek/mmp/core/webcore/BrowserContainer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;


# static fields
.field private static final tag:Ljava/lang/String;


# instance fields
.field private browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private context:Landroid/content/Context;

.field private isRetring:Z

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/mmp/core/webcore/BrowserContainer;)Lcom/iflytek/mmp/core/webcore/BrowserCore;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iflytek/mmp/core/webcore/BrowserContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->isRetring:Z

    return p1
.end method

.method private isHistoryUrl(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dismissProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 4

    const/4 v2, -0x1

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->context:Landroid/content/Context;

    new-instance v0, Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v0, p0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setBrowserCoreListenerListener(Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;)V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {p0, v0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    const-string/jumbo v1, "NativeUI"

    new-instance v2, Lcom/iflytek/mmp/core/webcore/BrowserContainer$NativeUI;

    invoke-direct {v2, p0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer$NativeUI;-><init>(Lcom/iflytek/mmp/core/webcore/BrowserContainer;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->progressBar:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "assets/progressBar/color_progress_bar.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->addView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->tag:Ljava/lang/String;

    const-string/jumbo v2, "parse progressBar drawable file faile"

    invoke-static {v1, v2, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->dismissProgressBar()V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->onDestroy()V

    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDownloadStart, url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLoadResource, url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageFinished, nurl is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->dismissProgressBar()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageStarted, url is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const-string/jumbo v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->isHistoryUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->isRetring:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->showProgressBar()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->isRetring:Z

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgressChanged, newProgress is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceivedError, errorCode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,description is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,failingUrl is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->dismissProgressBar()V

    const/4 v0, 0x0

    return v0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setWebViewBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    invoke-virtual {v0, p1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setBackgroundColor(I)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
