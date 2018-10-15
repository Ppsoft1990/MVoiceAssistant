.class public Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
.super Lcom/iflytek/mmp/core/webcore/BrowserCore;
.source "LxWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field protected c:Ljava/util/HashMap;
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

.field protected d:Lqk;

.field protected e:Z

.field protected f:Lri;

.field protected g:Z

.field protected h:Z

.field i:J

.field public j:Z

.field k:Landroid/view/ViewConfiguration;

.field l:I

.field m:I

.field n:I

.field o:I

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->e:Z

    .line 66
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->i:J

    .line 69
    iput-boolean v5, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->j:Z

    .line 72
    iput v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->a:I

    .line 75
    iput-boolean v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->b:Z

    .line 77
    iput-boolean v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->p:Z

    .line 275
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->k:Landroid/view/ViewConfiguration;

    .line 276
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->k:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->k:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->l:I

    .line 277
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->k:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->k:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->m:I

    .line 278
    iput v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->n:I

    iput v4, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->o:I

    .line 87
    invoke-super {p0, v4}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->setListenBackKeyEvent(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 99
    :cond_0
    const v1, -0xd0d0e

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setBackgroundColor(I)V

    .line 102
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->registBaseComponents(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->c:Ljava/util/HashMap;

    .line 105
    new-instance v1, Lqj;

    invoke-direct {v1, p0}, Lqj;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    iput-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->d:Lqk;

    .line 112
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "ua":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getSettings()Landroid/webkit/WebSettings;

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

    .line 114
    const-string/jumbo v1, "LxWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "webview new ua is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lhl;->k()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 118
    const-string/jumbo v1, "LxWebView"

    const-string/jumbo v2, "SDK version >= 8(2.2) -> setPluginState(PluginState.OFF)"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 123
    :cond_1
    const-string/jumbo v1, "LxBrowserComponents"

    new-instance v2, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$a;

    invoke-direct {v2, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$a;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 143
    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$1;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->b()V

    .line 162
    invoke-virtual {p0, v4}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setVerticalScrollBarEnabled(Z)V

    .line 164
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 178
    const-string/jumbo v4, "LxWebView"

    const-string/jumbo v5, "JSInterfaceWhiteList----JSINTERFACE_DEBUG_WHITELIST_SWITCH : false"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v2, 0x0

    .line 184
    .local v2, "isNeedAdd":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v3

    .line 188
    :cond_1
    const-string/jumbo v4, "javascript:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    invoke-static {p1}, Lazk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "host":Ljava/lang/String;
    const-string/jumbo v4, "LxWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "JSInterfaceWhiteList----url is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", host is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    invoke-static {}, Lagv;->a()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Lagv;->a()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 198
    invoke-static {}, Lagv;->a()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    const/4 v2, 0x1

    .end local v1    # "i":I
    :cond_2
    move v3, v2

    .line 205
    goto :goto_0

    .line 197
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 323
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setOverScrollMode(I)V

    .line 325
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string/jumbo v3, "LxWebView"

    const-string/jumbo v4, "handleWebviewJSInterface() is called"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean v3, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->p:Z

    if-eqz v3, :cond_1

    .line 211
    const-string/jumbo v3, "LxWebView"

    const-string/jumbo v4, "handleWebviewJSInterface() : js interface has injected,do not handle this time."

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->a(Ljava/lang/String;)Z

    move-result v0

    .line 216
    .local v0, "isNeedAdd":Z
    if-eqz v0, :cond_0

    .line 217
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->p:Z

    .line 218
    new-instance v2, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;

    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 219
    .local v2, "viewComponent":Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;
    const-string/jumbo v3, "browserView"

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->c:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->c:Ljava/util/HashMap;

    const-class v4, Lcom/iflytek/viafly/music/MusicBusinessComponent;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/music/MusicBusinessComponent;

    .line 223
    .local v1, "mc":Lcom/iflytek/viafly/music/MusicBusinessComponent;
    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/music/MusicBusinessComponent;->onBeforePageLoad(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a_()V
    .locals 3

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT89803"

    const/4 v2, 0x0

    .line 454
    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 455
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->g:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 284
    .local v0, "currentTouchTime":J
    iget-wide v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->i:J

    sub-long v6, v0, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 285
    iget v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->n:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->o:I

    if-eqz v6, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 287
    .local v4, "secX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 288
    .local v5, "secY":I
    iget v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->n:I

    sub-int v2, v4, v6

    .line 289
    .local v2, "delX":I
    iget v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->o:I

    sub-int v3, v5, v6

    .line 290
    .local v3, "delY":I
    const-string/jumbo v6, "LxWebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "------------->> webview-action : delX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", delY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", ss = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->l:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    mul-int v6, v2, v2

    mul-int v7, v3, v3

    add-int/2addr v6, v7

    iget v7, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->l:I

    if-ge v6, v7, :cond_0

    .line 292
    iput-wide v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->i:J

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->n:I

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->o:I

    .line 295
    const-string/jumbo v6, "LxWebView"

    const-string/jumbo v7, "------------->> webview-action : handle double-tap"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v6, 0x1

    .line 318
    .end local v0    # "currentTouchTime":J
    .end local v2    # "delX":I
    .end local v3    # "delY":I
    .end local v4    # "secX":I
    .end local v5    # "secY":I
    :goto_0
    return v6

    .line 301
    .restart local v0    # "currentTouchTime":J
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->n:I

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->o:I

    .line 303
    iput-wide v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->i:J

    .line 318
    .end local v0    # "currentTouchTime":J
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 305
    iget v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->n:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->o:I

    if-eqz v6, :cond_1

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 307
    .restart local v4    # "secX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 308
    .restart local v5    # "secY":I
    iget v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->n:I

    sub-int v2, v4, v6

    .line 309
    .restart local v2    # "delX":I
    iget v6, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->o:I

    sub-int v3, v5, v6

    .line 310
    .restart local v3    # "delY":I
    mul-int v6, v2, v2

    mul-int v7, v3, v3

    add-int/2addr v6, v7

    iget v7, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->m:I

    if-lt v6, v7, :cond_1

    .line 311
    iput v8, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->n:I

    .line 312
    iput v8, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->o:I

    .line 313
    const-string/jumbo v6, "LxWebView"

    const-string/jumbo v7, "------------->> webview-action : cancel double-tap"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->h:Z

    return v0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 355
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    const-string/jumbo v1, "LxWebView"

    const-string/jumbo v2, "releaseComponets()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/mmp/core/componentsManager/Components;

    .line 358
    .local v0, "cm":Lcom/iflytek/mmp/core/componentsManager/Components;
    instance-of v2, v0, Lcom/iflytek/framework/business/components/AbsComponents;

    if-eqz v2, :cond_0

    .line 359
    check-cast v0, Lcom/iflytek/framework/business/components/AbsComponents;

    .end local v0    # "cm":Lcom/iflytek/mmp/core/componentsManager/Components;
    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/AbsComponents;->destroyComponents()V

    goto :goto_0

    .line 363
    :cond_1
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->e:Z

    return v0
.end method

.method public getAdblockNum()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->a:I

    return v0
.end method

.method public getBrowserEventListener()Lqk;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->d:Lqk;

    return-object v0
.end method

.method public getIsNeedInject()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->j:Z

    return v0
.end method

.method public getLxBaseComponents()Ljava/util/HashMap;
    .locals 1
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
    .line 351
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWideViewPort()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->b(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lanv;->g(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 170
    .local v0, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 171
    invoke-super {p0, p1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadUrl(Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-super {p0, p1, v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/graphics/Rect;

    .prologue
    .line 329
    invoke-static {}, Lhl;->k()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setAdblockNum(I)V
    .locals 0
    .param p1, "adblockNum"    # I

    .prologue
    .line 434
    iput p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->a:I

    .line 435
    return-void
.end method

.method public setBrowserEventListener(Lqk;)V
    .locals 3
    .param p1, "eventListener"    # Lqk;

    .prologue
    .line 370
    const-string/jumbo v0, "LxWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrowserEventHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->d:Lqk;

    .line 372
    return-void
.end method

.method public setBrowserPageAbility(Lri;)V
    .locals 0
    .param p1, "browserPageAbility"    # Lri;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->f:Lri;

    .line 348
    return-void
.end method

.method public setInWhiteList(Z)V
    .locals 0
    .param p1, "isInWhiteList"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->b:Z

    .line 443
    return-void
.end method

.method public setIsNeedInject(Z)V
    .locals 0
    .param p1, "isNeedInject"    # Z

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->j:Z

    .line 427
    return-void
.end method

.method public setIsNeedTitlePlayBtn(Z)V
    .locals 2
    .param p1, "isNeedTitlePlayBtn"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->e:Z

    .line 380
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->f:Lri;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->f:Lri;

    iget-boolean v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->e:Z

    invoke-interface {v0, v1}, Lri;->b(Z)V

    .line 383
    :cond_0
    return-void
.end method

.method public setNoHandleRedirect(Z)V
    .locals 0
    .param p1, "mNoHandleRedirect"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->h:Z

    .line 344
    return-void
.end method
