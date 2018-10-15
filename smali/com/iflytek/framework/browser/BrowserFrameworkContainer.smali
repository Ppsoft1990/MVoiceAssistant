.class public Lcom/iflytek/framework/browser/BrowserFrameworkContainer;
.super Landroid/widget/LinearLayout;
.source "BrowserFrameworkContainer.java"

# interfaces
.implements Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$b;
.implements Lcom/iflytek/viafly/Home$a;


# instance fields
.field private a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lqi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->c:Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 74
    iput-object p1, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->b:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->setOrientation(I)V

    .line 82
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-direct {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    .line 83
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v0, p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->setTitleClickListener(Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$b;)V

    .line 87
    invoke-static {}, Lazf;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->c:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 216
    if-nez p1, :cond_1

    .line 255
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    const-string/jumbo v2, "BrowserFrameworkContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchMainView begin, view is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string/jumbo v2, "BrowserFrameworkContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchMainView begin, getChildAt(0) is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0, v5}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 225
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 228
    invoke-virtual {p0, p1, v5, v1}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 231
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 233
    invoke-virtual {p0, v5}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->removeViewAt(I)V

    .line 236
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 239
    invoke-virtual {p0, p1, v5, v1}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 242
    instance-of v2, p1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v2, :cond_3

    .line 243
    check-cast p1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getFocus()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "focus":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->show_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 246
    iget-object v2, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b()V

    goto/16 :goto_0

    .line 252
    .end local v0    # "focus":Ljava/lang/String;
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a()V

    goto/16 :goto_0
.end method

.method private c(Z)V
    .locals 9
    .param p1, "isConnect"    # Z

    .prologue
    .line 309
    const-string/jumbo v6, "BrowserFrameworkContainer"

    const-string/jumbo v7, "notifyNetworkChange "

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, "currentView":Landroid/view/View;
    instance-of v6, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v6, :cond_0

    move-object v5, v0

    .line 312
    check-cast v5, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 313
    .local v5, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    const-string/jumbo v6, "BrowserFrameworkContainer"

    const-string/jumbo v7, "notifyNetworkChange callback to h5"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {}, Lazf;->a()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "netType":Ljava/lang/String;
    const-string/jumbo v6, "BrowserFrameworkContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyNetworkChange netType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "isConnect"

    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 319
    const-string/jumbo v6, "netType"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    new-instance v6, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v7, "OK"

    invoke-direct {v6, v7, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "result":Ljava/lang/String;
    const-string/jumbo v6, "BrowserFrameworkContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyNetworkChange callback jsonObject "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNetConnectChange(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\')"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 328
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "netType":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    return-void

    .line 320
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "netType":Ljava/lang/String;
    .restart local v5    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BrowserFrameworkContainer"

    const-string/jumbo v7, "notifyNetworkChange callback error "

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->d:Lqi;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->d:Lqi;

    invoke-interface {v0}, Lqi;->a()V

    .line 449
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V
    .locals 2
    .param p1, "webView"    # Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    .param p2, "webInfo"    # Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    .prologue
    .line 181
    const-string/jumbo v0, "BrowserFrameworkContainer"

    const-string/jumbo v1, "addWebViewForLocation "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Laod;->a()Laod;

    move-result-object v0

    iget-object v1, p2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laod;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Landroid/webkit/WebView;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V

    .line 188
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method public a(Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V
    .locals 2
    .param p1, "webInfo"    # Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    .prologue
    .line 193
    const-string/jumbo v0, "BrowserFrameworkContainer"

    const-string/jumbo v1, "addWebViewForLocation "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-static {}, Laod;->a()Laod;

    move-result-object v0

    iget-object v1, p1, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laod;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V

    .line 200
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Landroid/view/View;)V

    .line 202
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;ZLjava/lang/String;)V
    .locals 2
    .param p1, "titleName"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p3, "status"    # Z
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string/jumbo v0, "BrowserFrameworkContainer"

    const-string/jumbo v1, "openBusinessWebPage "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;ZLjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "titleName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "channlId"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string/jumbo v0, "BrowserFrameworkContainer"

    const-string/jumbo v1, "openContentWebPage "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v0, "BrowserFrameworkContainer"

    const-string/jumbo v1, "openContentWebPage faile, url is null"

    invoke-static {v0, v1}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {}, Laod;->a()Laod;

    move-result-object v0

    invoke-virtual {v0, p2}, Laod;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 162
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4
    .param p1, "isConnect"    # Z

    .prologue
    .line 297
    const-string/jumbo v1, "BrowserFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNetConnectChange isConnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lazf;->a()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "currentNetType":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    iput-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->c:Ljava/lang/String;

    .line 303
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->c(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 105
    const-string/jumbo v4, "BrowserFrameworkContainer"

    const-string/jumbo v5, "handleBackClick "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "currentView":Landroid/view/View;
    const-string/jumbo v4, "BrowserFrameworkContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleBackClick begin, currentView is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    instance-of v4, v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v4, :cond_1

    .line 111
    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .end local v0    # "currentView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    .line 112
    .local v2, "localBusinessWebView":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getFocus()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "focus":Ljava/lang/String;
    const-string/jumbo v4, "BrowserFrameworkContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleBackClick focus is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "smarthome"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-direct {p0, v4}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Landroid/view/View;)V

    .line 122
    .end local v1    # "focus":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->k()V

    .line 126
    .end local v2    # "localBusinessWebView":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    :goto_0
    return v3

    .restart local v0    # "currentView":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v4, v3}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Z)Z

    move-result v3

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v1

    .line 385
    .local v1, "currentView":Landroid/view/View;
    instance-of v3, v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 386
    check-cast v2, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 387
    .local v2, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lqk;->a(IILandroid/content/Intent;)V

    .line 397
    const/16 v3, 0x7d1

    if-ne p1, v3, :cond_1

    .line 399
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getLxBaseComponents()Ljava/util/HashMap;

    move-result-object v3

    const-class v4, Lcom/iflytek/framework/business/components/ContactsComponents;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/components/ContactsComponents;

    .line 400
    .local v0, "businessComponent":Lcom/iflytek/framework/business/components/ContactsComponents;
    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/framework/business/components/ContactsComponents;->onActivityResult(IILandroid/content/Intent;)V

    .line 411
    .end local v0    # "businessComponent":Lcom/iflytek/framework/business/components/ContactsComponents;
    .end local v2    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 401
    .restart local v2    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_1
    const/16 v3, 0x7d2

    if-ne p1, v3, :cond_2

    .line 403
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getLxBaseComponents()Ljava/util/HashMap;

    move-result-object v3

    const-class v4, Lcom/iflytek/framework/business/components/ListeningComponents;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/components/ListeningComponents;

    .line 404
    .local v0, "businessComponent":Lcom/iflytek/framework/business/components/ListeningComponents;
    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/framework/business/components/ListeningComponents;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 405
    .end local v0    # "businessComponent":Lcom/iflytek/framework/business/components/ListeningComponents;
    :cond_2
    const/16 v3, 0x7d4

    if-ne p1, v3, :cond_0

    .line 407
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getLxBaseComponents()Ljava/util/HashMap;

    move-result-object v3

    const-class v4, Lcom/iflytek/framework/business/components/PicComponents;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/components/PicComponents;

    .line 408
    .local v0, "businessComponent":Lcom/iflytek/framework/business/components/PicComponents;
    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/framework/business/components/PicComponents;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 418
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v3

    sget-object v4, Lcom/iflytek/framework/business/entities/UIEvent;->on_key_down:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v0

    .line 420
    .local v0, "currentView":Landroid/view/View;
    instance-of v3, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 421
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 422
    .local v1, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lqk;->a(ILandroid/view/KeyEvent;)Z

    .line 425
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a()Z

    move-result v2

    .line 431
    .end local v0    # "currentView":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 427
    .restart local v0    # "currentView":Landroid/view/View;
    :cond_2
    const/16 v3, 0x52

    if-ne p1, v3, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->b()Z

    move-result v2

    goto :goto_0
.end method

.method public b()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "currentView":Landroid/view/View;
    const-string/jumbo v1, "BrowserFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMenuClick begin, currentView is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    instance-of v1, v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .end local v0    # "currentView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->d()V

    .line 146
    :goto_0
    return v4

    .line 145
    .restart local v0    # "currentView":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c()V

    goto :goto_0
.end method

.method public b(Z)Z
    .locals 3
    .param p1, "isLongPress"    # Z

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, "currentView":Landroid/view/View;
    instance-of v2, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 376
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 377
    .local v1, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v2

    invoke-interface {v2, p1}, Lqk;->b(Z)V

    .line 379
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 283
    const-string/jumbo v2, "BrowserFrameworkContainer"

    const-string/jumbo v3, "onActivityResume --------"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "currentView":Landroid/view/View;
    instance-of v2, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_0

    .line 288
    const-string/jumbo v2, "BrowserFrameworkContainer"

    const-string/jumbo v3, "onActivityResume currentview is LxWebView  "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 289
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 290
    .local v1, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v2

    invoke-interface {v2}, Lqk;->g()V

    .line 293
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "currentView":Landroid/view/View;
    instance-of v2, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 334
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 335
    .local v1, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v2

    invoke-interface {v2}, Lqk;->h()V

    .line 337
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "currentView":Landroid/view/View;
    instance-of v2, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 344
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 345
    .local v1, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v2

    invoke-interface {v2}, Lqk;->i()V

    .line 347
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->d()V

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMainView()Landroid/view/View;
    .locals 3

    .prologue
    .line 260
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 262
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 264
    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    .line 265
    .local v0, "container":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentContentView()Landroid/view/View;

    move-result-object v1

    .line 268
    .end local v0    # "container":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-object v1
.end method

.method public h()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->k()V

    .line 454
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e()V

    .line 458
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->f()V

    .line 462
    return-void
.end method

.method public setPageEventListener(Lqi;)V
    .locals 0
    .param p1, "pageEventListener"    # Lqi;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->d:Lqi;

    .line 92
    return-void
.end method

.method public setPageFlowTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->setTitle(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public setPageFlowTitleState(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->setPageFlowTitleState(Z)V

    .line 96
    return-void
.end method
