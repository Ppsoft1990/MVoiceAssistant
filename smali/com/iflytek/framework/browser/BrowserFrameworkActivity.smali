.class public Lcom/iflytek/framework/browser/BrowserFrameworkActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "BrowserFrameworkActivity.java"

# interfaces
.implements Lqi;


# instance fields
.field private a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 64
    if-eqz p1, :cond_0

    .line 67
    const-string/jumbo v7, "entry"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "entry":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 107
    .end local v0    # "entry":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v0    # "entry":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->setPageFlowTitleState(Z)V

    .line 75
    const-string/jumbo v7, "openContentWebPage"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    const-string/jumbo v7, "url"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "url":Ljava/lang/String;
    const-string/jumbo v7, "title"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "title":Ljava/lang/String;
    iget-object v7, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v4, v5, v8}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "openBusinessWebPage"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 83
    const-string/jumbo v7, "title"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .restart local v4    # "title":Ljava/lang/String;
    const-string/jumbo v7, "viaResult"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 86
    .local v3, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    iget-object v7, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v3, v9, v8}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;ZLjava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v3    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    .end local v4    # "title":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "addWebViewForLocation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 88
    const-string/jumbo v7, "title"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .restart local v4    # "title":Ljava/lang/String;
    const-string/jumbo v7, "webInfo"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    .line 91
    .local v6, "webInfo":Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;
    iget-object v7, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v7, v6}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V

    goto :goto_0

    .line 92
    .end local v4    # "title":Ljava/lang/String;
    .end local v6    # "webInfo":Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;
    :cond_4
    const-string/jumbo v7, "openWebPageWithParam"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 93
    const-string/jumbo v7, "param"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/browser/BrowserParams;

    .line 94
    .local v2, "params":Lcom/iflytek/viafly/browser/BrowserParams;
    if-eqz v2, :cond_0

    .line 95
    iget-object v5, v2, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    .line 96
    .restart local v5    # "url":Ljava/lang/String;
    iget-object v4, v2, Lcom/iflytek/viafly/browser/BrowserParams;->titleText:Ljava/lang/String;

    .line 97
    .restart local v4    # "title":Ljava/lang/String;
    iget-object v1, v2, Lcom/iflytek/viafly/browser/BrowserParams;->info:Ljava/lang/String;

    .line 99
    .local v1, "info":Ljava/lang/String;
    const-string/jumbo v7, "noTitle"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 100
    iget-object v7, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v7, v9}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->setPageFlowTitleState(Z)V

    .line 103
    :cond_5
    iget-object v7, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v4, v5, v8}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 44
    invoke-direct {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->c()V

    .line 45
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->mBody:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const v1, 0x7f02043e

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setBackgroundResource(I)V

    .line 47
    new-instance v0, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    .line 48
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v0, p0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->setPageEventListener(Lqi;)V

    .line 52
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v0, v1}, Lqh;->a(Lcom/iflytek/framework/browser/BrowserFrameworkContainer;)V

    .line 55
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 58
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->mTitleBar:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 60
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->finish()V

    .line 190
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 194
    const/4 v0, 0x0

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->overridePendingTransition(II)V

    .line 195
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 162
    const-string/jumbo v0, "BrowserFrameworkActivity"

    const-string/jumbo v1, "onActivityResult "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(IILandroid/content/Intent;)Z

    .line 166
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->b()V

    .line 38
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v1, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->g()Z

    .line 146
    iget-object v1, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    iput-object v3, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    .line 153
    :cond_0
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v1

    invoke-virtual {v1, v3}, Lqh;->a(Lcom/iflytek/framework/browser/BrowserFrameworkContainer;)V

    .line 155
    const-string/jumbo v1, "BrowserFrameworkActivity"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 157
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BrowserFrameworkActivity"

    const-string/jumbo v2, "mBrowserFrameworkContainer removeAllViews() throws exception"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 170
    const-string/jumbo v0, "BrowserFrameworkActivity"

    const-string/jumbo v1, "--------------->> onKeyDown()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    .line 177
    :cond_0
    const-string/jumbo v0, "BrowserFrameworkActivity"

    const-string/jumbo v1, " onActivityKeyDown() false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    const-string/jumbo v0, "BrowserFrameworkActivity"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a(Landroid/content/Intent;)V

    .line 115
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 127
    const-string/jumbo v0, "BrowserFrameworkActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onPause()V

    .line 129
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->e()Z

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "BrowserFrameworkActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->d()Z

    .line 123
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 134
    const-string/jumbo v0, "BrowserFrameworkActivity"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onStop()V

    .line 136
    iget-object v0, p0, Lcom/iflytek/framework/browser/BrowserFrameworkActivity;->a:Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->f()Z

    .line 137
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method
