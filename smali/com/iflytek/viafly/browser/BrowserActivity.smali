.class public final Lcom/iflytek/viafly/browser/BrowserActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/iflytek/viafly/browser/IBrowserPageAbility;


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserActivity"


# instance fields
.field private mBrowserComponent:Lcom/iflytek/viafly/browser/BrowserComponent;

.field private mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private hideTitleBar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 192
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 194
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 47
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->hideTitleBar()V

    .line 49
    new-instance v1, Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-direct {v1, p0, p0}, Lcom/iflytek/viafly/browser/BrowserComponent;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/browser/IBrowserPageAbility;)V

    iput-object v1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserComponent:Lcom/iflytek/viafly/browser/BrowserComponent;

    .line 50
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserComponent:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/browser/BrowserActivity;->setBrowserActivityCallback(Lcom/iflytek/viafly/browser/IBrowserPageCallback;)V

    .line 51
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserComponent:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/browser/BrowserComponent;->getBrowserView()Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "browserView":Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/browser/BrowserActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBody:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const v2, 0x7f02043e

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setBackgroundResource(I)V

    .line 54
    return-void
.end method

.method private setCustomTitleBar(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    const/4 v2, -0x1

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    return-void
.end method

.method private showTitleBar()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 189
    return-void
.end method

.method private stopSpeak()V
    .locals 3

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->l()Lpp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpp;->d(Lju;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->l()Lpp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpp;->c(Lju;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BrowserActivity"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 166
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 294
    const/4 v0, 0x0

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/browser/BrowserActivity;->overridePendingTransition(II)V

    .line 295
    return-void
.end method

.method public finishPage()V
    .locals 0

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->finish()V

    .line 279
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 263
    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 213
    return-object p0
.end method

.method public getPageTitleBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->getTitleBarView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hidePageTitleBar()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->hideTitleBar()V

    .line 224
    return-void
.end method

.method public isPageFinishing()Z
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 172
    const-string/jumbo v0, "BrowserActivity"

    const-string/jumbo v1, "onActivityResult()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onActivityResult(IILandroid/content/Intent;)V

    .line 176
    :cond_0
    return-void
.end method

.method protected onClickTitleLeftButton()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onClickTitleLeftButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onClickTitleLeftButton()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 66
    const-string/jumbo v1, "BrowserActivity"

    const-string/jumbo v2, "onConfigurationChanged()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v1, p1}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    :cond_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BrowserActivity"

    const-string/jumbo v2, "onConfigurationChanged()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const-string/jumbo v0, "BrowserActivity"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->initView()V

    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onCreate(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 126
    const-string/jumbo v1, "BrowserActivity"

    const-string/jumbo v2, "onDestroy()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserComponent:Lcom/iflytek/viafly/browser/BrowserComponent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/browser/BrowserComponent;->getBrowserView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .local v0, "view":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 130
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->stopSpeak()V

    .line 132
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v1}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onDestroy()V

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    .line 136
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 137
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onNewIntent(Landroid/content/Intent;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 107
    const-string/jumbo v0, "BrowserActivity"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onPause()V

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->stopSpeak()V

    .line 112
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onPause()V

    .line 113
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 89
    const-string/jumbo v0, "BrowserActivity"

    const-string/jumbo v1, "onRestart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onRestart()V

    .line 93
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onRestart()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 98
    const-string/jumbo v0, "BrowserActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onResume()V

    .line 102
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 103
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "BrowserActivity"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onStart()V

    .line 84
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onStart()V

    .line 85
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 117
    const-string/jumbo v0, "BrowserActivity"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageCallback;->onStop()V

    .line 121
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onStop()V

    .line 122
    return-void
.end method

.method public runOnPageUiThread(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/browser/BrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public setBrowserActivityCallback(Lcom/iflytek/viafly/browser/IBrowserPageCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserActivity;->mBrowserPageCallback:Lcom/iflytek/viafly/browser/IBrowserPageCallback;

    .line 43
    return-void
.end method

.method public setPageCustomTitleBar(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/browser/BrowserActivity;->setCustomTitleBar(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method public setPageGroupTitleName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "subTitleText"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/browser/BrowserActivity;->setGroupTitleName(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public setPageTitleBarBg(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/browser/BrowserActivity;->setTitleBarBg(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setPageTitleBarVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/browser/BrowserActivity;->setTitleBarVisible(Z)V

    .line 234
    return-void
.end method

.method public setPageTitleLeftButtonImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/browser/BrowserActivity;->setTitleLeftButtonImage(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 249
    return-void
.end method

.method public setPageTitleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/browser/BrowserActivity;->setTitleName(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setPageTitleNameStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/browser/BrowserActivity;->setTitleNameStyle(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public showPageTitleBar()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->showTitleBar()V

    .line 219
    return-void
.end method

.method public showPageTitlePopupWindowButton()V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserActivity;->showTitlePopupWindowButton()V

    .line 254
    return-void
.end method
