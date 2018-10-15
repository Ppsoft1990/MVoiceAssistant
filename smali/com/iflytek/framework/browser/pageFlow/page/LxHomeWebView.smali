.class public Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;
.super Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
.source "LxHomeWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    .line 104
    iput-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a:Z

    .line 106
    iput-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->b:Z

    .line 911
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$2;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$2;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->p:Landroid/os/Handler;

    .line 127
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a(Landroid/content/Context;)V

    .line 129
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$1;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->setIsNeedInject(Z)V

    .line 140
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    const-string/jumbo v1, "LxHomeWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWideViewPortMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->b:Z

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 155
    :cond_0
    invoke-static {}, Lrh;->a()Lrh;

    move-result-object v1

    invoke-virtual {v1}, Lrh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->loadUrl(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v4}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 159
    invoke-virtual {p0, v4}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 161
    const v1, -0xd0d0e

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->setBackgroundColor(I)V

    .line 164
    const-string/jumbo v1, "WidgetMMPContainerComponents"

    new-instance v2, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    invoke-direct {v2, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)V

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 167
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "ua":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ifly_lingxi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "LxHomeWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "webview new ua is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lrg;->a()Lrg;

    move-result-object v1

    invoke-virtual {v1, p0}, Lrg;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)V

    .line 175
    invoke-static {}, Lhl;->k()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 176
    const-string/jumbo v1, "LxHomeWebView"

    const-string/jumbo v2, "SDK version >= 8(2.2) -> setPluginState(PluginState.OFF)"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 179
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    sget-object v3, Lcom/iflytek/yd/system/ApnAccessorType;->UNKNOWN:Lcom/iflytek/yd/system/ApnAccessorType;

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "apn":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 275
    :try_start_0
    new-instance v1, Lcom/iflytek/yd/system/ConnectionManager;

    invoke-direct {v1, p1}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 276
    .local v1, "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v1}, Lcom/iflytek/yd/system/ConnectionManager;->getCurrentNetworkType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 278
    sget-object v3, Lcom/iflytek/yd/system/ApnAccessorType;->WIFI:Lcom/iflytek/yd/system/ApnAccessorType;

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    new-instance v3, Lcom/iflytek/yd/system/ApnManager;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/iflytek/yd/system/SimInfoManager;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/iflytek/yd/system/SimInfoManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4, v5}, Lcom/iflytek/yd/system/ApnManager;-><init>(Landroid/content/Context;Lcom/iflytek/yd/system/SimInfoManager;)V

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnManager;->getAPNType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 286
    .end local v1    # "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    :cond_1
    :goto_0
    return-object v0

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LxHomeWebView"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrentSkinName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    const-string/jumbo v0, "theme_new"

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCurrentSkinPath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 238
    const-string/jumbo v0, ""

    .line 239
    .local v0, "currentSkinPath":Ljava/lang/String;
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getCurrentSkinName()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "skinName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skin/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/dialogModeRes/image.js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 243
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file:///android_asset/skin/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LxHomeWebView"

    const-string/jumbo v5, "open file from assets fail, so load it from rom"

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "skin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsNeedInject()Z
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x0

    return v0
.end method

.method public getWideViewPort()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->b:Z

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 892
    const-string/jumbo v0, "LxHomeWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusChanged begin, SDK VERSION is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 899
    :goto_0
    return-void

    .line 898
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setIsNeedInject(Z)V
    .locals 1
    .param p1, "isNeedInject"    # Z

    .prologue
    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->j:Z

    .line 909
    return-void
.end method
