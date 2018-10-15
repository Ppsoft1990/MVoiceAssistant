.class public Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;
.source "UserProtocolActivity.java"


# instance fields
.field private b:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;-><init>()V

    invoke-static {}, Lcom/cmcc/migusso/auth/common/HostConfig;->getProtocolUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sourceid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected final b()Landroid/view/View;
    .locals 8

    const/16 v7, 0x13

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmcc/migusso/sdk/view/TitleBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->b:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->b:Lcom/cmcc/migusso/sdk/view/TitleBar;

    invoke-virtual {v2, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->b:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v2, "\u4f7f\u7528\u534f\u8bae"

    invoke-virtual {v1, v2}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->b:Lcom/cmcc/migusso/sdk/view/TitleBar;

    invoke-virtual {v1, v6}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Z)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->b:Lcom/cmcc/migusso/sdk/view/TitleBar;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string/jumbo v3, "searchBoxJavaBridge_"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string/jumbo v3, "accessibilityTraversal"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string/jumbo v4, "gb2312"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_1

    invoke-static {v6}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_2
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    new-instance v3, Lo/ez;

    invoke-direct {v3}, Lo/ez;-><init>()V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string/jumbo v1, "UserProtocolActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadUrl.url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;->b:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/fa;

    invoke-direct {v1, p0}, Lo/fa;-><init>(Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\u7528\u6237\u534f\u8bae"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
