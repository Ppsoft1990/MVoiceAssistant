.class public Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;
.super Landroid/widget/LinearLayout;
.source "PageFlowFrameworkContainer.java"

# interfaces
.implements Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;
.implements Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;
.implements Lri;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$b;,
        Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

.field private b:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

.field private h:J

.field private i:Landroid/os/Handler;

.field private j:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->d:I

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->i:Landroid/os/Handler;

    .line 127
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method private a(Landroid/view/View;)Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 602
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    .line 603
    .local v0, "historyItem":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 607
    .end local v0    # "historyItem":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 891
    const-string/jumbo v2, "PageFlowFrameworkContainer"

    const-string/jumbo v3, "handleRedirect begin"

    invoke-static {v2, v3}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    instance-of v2, p1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 894
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 895
    .local v1, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    const-string/jumbo v2, "PageFlowFrameworkContainer"

    const-string/jumbo v3, "LxWebView isNoHandleRedirect is true"

    invoke-static {v2, v3}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string/jumbo v2, ""

    .line 920
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :goto_0
    return-object v2

    .line 903
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Landroid/view/View;)Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    move-result-object v0

    .line 904
    .local v0, "item":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    if-eqz v0, :cond_2

    .line 905
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    invoke-virtual {v2, p1}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;->removeView(Landroid/view/View;)V

    .line 906
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 909
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->setCurrentItemIndex(I)V

    .line 912
    instance-of v2, p1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 913
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 915
    .restart local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v2

    invoke-interface {v2}, Lqk;->o()V

    .line 918
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 920
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private a(ILandroid/view/View;I)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "from"    # I

    .prologue
    .line 392
    const-string/jumbo v1, "PageFlowFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTitleData begin, progress is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,view is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,from is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    .line 398
    .local v0, "currentItem":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 399
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a(II)V

    .line 401
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    .line 135
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    .line 136
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 138
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->setOrientation(I)V

    .line 141
    new-instance v3, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    .line 143
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x60

    invoke-static {v3, v4}, Lazk;->a(Landroid/content/Context;I)I

    move-result v1

    .line 144
    .local v1, "titleHeight":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v2, "titlelLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v3, v2}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v3, p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->setHomeEventListener(Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer$a;)V

    .line 149
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {p0, v3}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->addView(Landroid/view/View;)V

    .line 152
    new-instance v3, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    invoke-direct {v3, p1}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    .line 153
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 156
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    invoke-virtual {p0, v3, v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v3, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    invoke-direct {v3, v4}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;)V

    iput-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->g:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    .line 160
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->j()V

    .line 161
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 799
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    const-string/jumbo v0, "http://wap.cmread.com/lx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 803
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->setVisibility(I)V

    goto :goto_0

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p1, "titleName"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 361
    const-string/jumbo v3, "PageFlowFrameworkContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTitleName begin, titleName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,view is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    .line 365
    .local v1, "currentItem":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d()Landroid/view/View;

    move-result-object v3

    if-ne v3, p2, :cond_2

    .line 367
    invoke-virtual {v1, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->c(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "configTitleName":Ljava/lang/String;
    const-string/jumbo v3, "PageFlowFrameworkContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTitleName, configTitleName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 373
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->setFluentPageTitle(Ljava/lang/String;)V

    .line 385
    .end local v0    # "configTitleName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 375
    .restart local v0    # "configTitleName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v3, p1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->setFluentPageTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    .end local v0    # "configTitleName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    .line 379
    .local v2, "item":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d()Landroid/view/View;

    move-result-object v4

    if-ne v4, p2, :cond_3

    .line 380
    invoke-virtual {v2, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1, "configTitleName"    # Ljava/lang/String;
    .param p2, "newView"    # Landroid/view/View;
    .param p3, "channelId"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v0

    .line 337
    .local v0, "currentItemIndex":I
    const-string/jumbo v2, "PageFlowFrameworkContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateHistoryForOpenView begin, configTitleName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,currentItemIndext is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,history size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 339
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;-><init>(Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$1;)V

    .line 343
    .local v1, "historyItem":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    invoke-virtual {v1, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->b(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, p2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->a(Landroid/view/View;)V

    .line 345
    invoke-virtual {v1, p3}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->a(Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->setCurrentItemIndex(I)V

    .line 351
    const-string/jumbo v2, "PageFlowFrameworkContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateHistoryForOpenView end, currentItemIndext is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 352
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,history size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "result":Z
    const-string/jumbo v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "file"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "about"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    :cond_0
    const/4 v0, 0x1

    .line 882
    .end local v0    # "result":Z
    :goto_0
    return v0

    .line 881
    .restart local v0    # "result":Z
    :cond_1
    const-string/jumbo v1, "PageFlowFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkUrl is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltc;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 407
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    .line 408
    .local v0, "currentItem":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d()Landroid/view/View;

    move-result-object v3

    .line 410
    .local v3, "view":Landroid/view/View;
    const-string/jumbo v4, "PageFlowFrameworkContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCurrentTitleBar begin, current content view is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "titleName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->c()Ljava/lang/String;

    move-result-object v2

    .line 417
    :cond_0
    instance-of v4, v3, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 419
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 420
    .local v1, "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    new-instance v5, Lrn;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->g()Z

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lrn;-><init>(ZZ)V

    invoke-virtual {v4, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a(Ljava/lang/String;Lrn;)V

    .line 432
    .end local v1    # "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :goto_0
    return-void

    .line 421
    :cond_1
    instance-of v4, v3, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    if-eqz v4, :cond_2

    move-object v1, v3

    .line 423
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 424
    .restart local v1    # "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    new-instance v5, Lrn;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->g()Z

    move-result v6

    invoke-direct {v5, v6, v7}, Lrn;-><init>(ZZ)V

    invoke-virtual {v4, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a(Ljava/lang/String;Lrn;)V

    goto :goto_0

    .line 425
    .end local v1    # "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_2
    instance-of v4, v3, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v4, :cond_3

    move-object v1, v3

    .line 427
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 428
    .restart local v1    # "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    new-instance v5, Lrn;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->g()Z

    move-result v6

    invoke-direct {v5, v6, v7}, Lrn;-><init>(ZZ)V

    invoke-virtual {v4, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a(Ljava/lang/String;Lrn;)V

    goto :goto_0

    .line 430
    .end local v1    # "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_3
    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    new-instance v5, Lrn;

    invoke-direct {v5, v7, v7}, Lrn;-><init>(ZZ)V

    invoke-virtual {v4, v2, v5}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a(Ljava/lang/String;Lrn;)V

    goto :goto_0
.end method

.method private getCurrentItemIndex()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->d:I

    return v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a(II)V

    .line 439
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 446
    const-string/jumbo v0, "PageFlowFrameworkContainer"

    const-string/jumbo v1, "switchPage()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 451
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 453
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->h()V

    .line 456
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->g()V

    .line 458
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 1294
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccVERSION_CODE"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    .line 1296
    .local v0, "oldVersionCode":I
    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100063"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 1300
    :cond_0
    return-void
.end method

.method private k()Z
    .locals 4

    .prologue
    .line 1303
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 1304
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1303
    invoke-static {v1}, Lmz;->b(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v0

    .line 1305
    .local v0, "type":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    if-nez v0, :cond_0

    .line 1306
    sget-object v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->UNKOWN:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 1308
    :cond_0
    const-string/jumbo v1, "PageFlowFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SimOperatorType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v1, v0}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v1, v0}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1311
    :cond_1
    const/4 v1, 0x0

    .line 1313
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setCurrentItemIndex(I)V
    .locals 3
    .param p1, "currentItemIndex"    # I

    .prologue
    .line 623
    iput p1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->d:I

    .line 624
    const-string/jumbo v0, "PageFlowFrameworkContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentItemIndex, mCurrentItemIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentContentView()Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "currentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 166
    instance-of v2, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 167
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 168
    .local v1, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v2

    invoke-interface {v2}, Lqk;->m()V

    .line 171
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1103
    const-string/jumbo v2, "PageFlowFrameworkContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHomeTitleClick begin, tag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const-string/jumbo v2, "tag_fluent_title_back"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1106
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->j:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$b;

    if-eqz v2, :cond_0

    .line 1107
    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->j:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$b;

    invoke-interface {v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$b;->h()V

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    const-string/jumbo v2, "tag_fluent_title_refresh"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1111
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentContentView()Landroid/view/View;

    move-result-object v0

    .line 1112
    .local v0, "currentView":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 1113
    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->reload()V

    .line 1117
    :cond_2
    instance-of v2, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1118
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 1119
    .local v1, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v2

    invoke-interface {v2}, Lqk;->l()V

    goto :goto_0

    .line 1121
    .end local v0    # "currentView":Landroid/view/View;
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_3
    const-string/jumbo v2, "tag_fluent_title_speak"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1124
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentContentView()Landroid/view/View;

    move-result-object v0

    .line 1125
    .restart local v0    # "currentView":Landroid/view/View;
    instance-of v2, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1126
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 1127
    .restart local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v2

    invoke-interface {v2}, Lqk;->k()V

    goto :goto_0

    .line 1129
    .end local v0    # "currentView":Landroid/view/View;
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_4
    const-string/jumbo v2, "tag_fluent_title_cancel_refresh"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1131
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentContentView()Landroid/view/View;

    move-result-object v0

    .line 1132
    .restart local v0    # "currentView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 1134
    check-cast v0, Landroid/webkit/WebView;

    .end local v0    # "currentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1136
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->h()V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "webInfo"    # Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    .prologue
    .line 816
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 840
    .end local p1    # "view":Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return-void

    .line 819
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_1
    iget-object v3, p2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    .line 821
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 822
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 824
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PageFlowFrameworkContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivity error, url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 831
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v2

    .line 833
    .local v2, "title":Ljava/lang/String;
    const/4 v4, 0x0

    .line 835
    .local v4, "webTtsStateListener":Lrl;
    instance-of v5, p1, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    if-eqz v5, :cond_3

    .line 836
    check-cast p1, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->getWebTtsStateListener()Lrl;

    move-result-object v4

    .line 839
    :cond_3
    invoke-virtual {p0, v2, p2, v4}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;Lrl;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V
    .locals 8
    .param p1, "webInfo"    # Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    .prologue
    .line 848
    if-nez p1, :cond_0

    .line 868
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v3, p1, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    .line 853
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 854
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 856
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PageFlowFrameworkContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivity error, url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 863
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v2, ""

    .line 865
    .local v2, "title":Ljava/lang/String;
    const/4 v4, 0x0

    .line 867
    .local v4, "webTtsStateListener":Lrl;
    invoke-virtual {p0, v2, p1, v4}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;Lrl;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "titleName"    # Ljava/lang/String;
    .param p2, "newView"    # Landroid/view/View;
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "forRedirect"    # Z

    .prologue
    const/4 v6, -0x1

    .line 295
    const-string/jumbo v3, "PageFlowFrameworkContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " openContentView forRedirect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentContentView()Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "currentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 299
    instance-of v3, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 300
    check-cast v2, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 301
    .local v2, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v3

    invoke-interface {v3, p4}, Lqk;->c(Z)V

    .line 306
    .end local v2    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    invoke-virtual {v3}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;->removeAllViews()V

    .line 307
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 308
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    invoke-virtual {v3, p2, v1}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iput-object p3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->f:Ljava/lang/String;

    .line 313
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->i()V

    .line 319
    instance-of v3, p2, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 320
    check-cast v2, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 321
    .restart local v2    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v3

    invoke-interface {v3}, Lqk;->m()V

    .line 323
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {p0, v3, p2, v4}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(ILandroid/view/View;I)V

    .line 324
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;)V

    .line 326
    .end local v2    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;Lrl;)V
    .locals 6
    .param p1, "titleName"    # Ljava/lang/String;
    .param p2, "webInfo"    # Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;
    .param p3, "webTtsStateListener"    # Lrl;

    .prologue
    const/4 v5, 0x0

    .line 270
    const-string/jumbo v2, "PageFlowFrameworkContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openBusinessWebViewDirect begin, titleName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-direct {v0, v2, p2, p3}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;-><init>(Landroid/content/Context;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;Lrl;)V

    .line 274
    .local v0, "mBusinessView":Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;
    invoke-virtual {v0, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->setBrowserCoreListenerListener(Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;)V

    .line 275
    invoke-virtual {v0, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->setBrowserPageAbility(Lri;)V

    .line 277
    new-instance v1, Lqn;

    invoke-direct {v1, v0}, Lqn;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    .line 278
    .local v1, "webAdapter":Lqn;
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->setBrowserEventListener(Lqk;)V

    .line 280
    if-eqz p2, :cond_0

    .line 281
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v5, v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    .line 286
    :goto_0
    const-string/jumbo v2, "PageFlowFrameworkContainer"

    const-string/jumbo v3, "openBusinessWebViewDirect end"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 283
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v5, v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;ZLjava/lang/String;)V
    .locals 7
    .param p1, "titleName"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p3, "status"    # Z
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 242
    const-string/jumbo v4, "PageFlowFrameworkContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "openBusinessWebView begin, titleName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;

    iget-object v4, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-direct {v0, v4, p2, p3, p4}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;-><init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;ZLjava/lang/String;)V

    .line 245
    .local v0, "mBusinessView":Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;
    invoke-virtual {v0, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->setBrowserCoreListenerListener(Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;)V

    .line 246
    invoke-virtual {v0, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebView;->setBrowserPageAbility(Lri;)V

    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, "mIsSpeechSearchResult":Z
    if-eqz p2, :cond_0

    .line 251
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v4

    if-eq v4, v2, :cond_1

    move v1, v2

    .line 252
    :goto_0
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 255
    const-string/jumbo v2, "PageFlowFrameworkContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " title "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    .line 260
    const-string/jumbo v2, "PageFlowFrameworkContainer"

    const-string/jumbo v3, "openBusinessWebView end"

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    :cond_1
    move v1, v3

    .line 251
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "titleName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string/jumbo v5, "PageFlowFrameworkContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "openWebView begin, titleName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    iget-object v5, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    .line 204
    .local v1, "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1, p2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setBrowserCoreListenerListener(Lcom/iflytek/mmp/core/webcore/BrowserCoreListener;)V

    .line 206
    invoke-virtual {v1, p0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setBrowserPageAbility(Lri;)V

    .line 210
    :try_start_0
    invoke-static {p2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    new-instance v2, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-direct {v2, v1}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    .line 213
    .local v2, "newsAdapter":Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setBrowserEventListener(Lqk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v2    # "newsAdapter":Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v1, p3, v5}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    .line 229
    invoke-static {}, Lws;->a()Lws;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lws;->c(J)V

    .line 230
    const-string/jumbo v5, "PageFlowFrameworkContainer"

    const-string/jumbo v6, "openWebView end"

    invoke-static {v5, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 214
    :cond_1
    :try_start_1
    invoke-static {p2}, Lql;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    new-instance v3, Lql;

    invoke-direct {v3, v1}, Lql;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    .line 217
    .local v3, "novelAdapter":Lql;
    invoke-virtual {v1, v3}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setBrowserEventListener(Lqk;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 223
    .end local v3    # "novelAdapter":Lql;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PageFlowFrameworkContainer"

    const-string/jumbo v6, "parse url error"

    invoke-static {v5, v6, v0}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-static {p2}, Lqm;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    new-instance v4, Lqm;

    invoke-direct {v4, v1}, Lqm;-><init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    .line 221
    .local v4, "sohuVideoAdapter":Lqm;
    invoke-virtual {v1, v4}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setBrowserEventListener(Lqk;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 18
    .param p1, "isShowAnim"    # Z

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->i:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v3

    .line 470
    .local v3, "currentItemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    .line 472
    .local v2, "currentItem":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d()Landroid/view/View;

    move-result-object v6

    .line 473
    .local v6, "currentView":Landroid/view/View;
    const-string/jumbo v13, "PageFlowFrameworkContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "back begin, currentItemIndext is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ,histroy size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 483
    .local v4, "currentTime":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v7

    .line 484
    .local v7, "interValTime":I
    const-string/jumbo v13, "PageFlowFrameworkContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "currentTime is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", mLastBackKeyDownTime is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->h:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", interValTime is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->h:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->h:J

    cmp-long v13, v4, v14

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->h:J

    sub-long v14, v4, v14

    int-to-long v0, v7

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_0

    .line 489
    const-string/jumbo v13, "PageFlowFrameworkContainer"

    const-string/jumbo v14, "back key interval time is too short, so skip it"

    invoke-static {v13, v14}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v13, 0x1

    .line 562
    :goto_0
    return v13

    .line 492
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->h:J

    .line 495
    if-eqz v6, :cond_1

    instance-of v13, v6, Landroid/webkit/WebView;

    if-eqz v13, :cond_1

    move-object v12, v6

    .line 496
    check-cast v12, Landroid/webkit/WebView;

    .line 497
    .local v12, "webView":Landroid/webkit/WebView;
    invoke-virtual {v12}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 498
    invoke-virtual {v12}, Landroid/webkit/WebView;->goBack()V

    .line 499
    const-string/jumbo v13, "PageFlowFrameworkContainer"

    const-string/jumbo v14, "webView canGoBack, so return true"

    invoke-static {v13, v14}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string/jumbo v13, "PageFlowFrameworkContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "back end, currentItemIndext is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ,histroy size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 502
    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 501
    invoke-static {v13, v14}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v13, 0x1

    goto :goto_0

    .line 508
    .end local v12    # "webView":Landroid/webkit/WebView;
    :cond_1
    if-gtz v3, :cond_2

    .line 509
    const-string/jumbo v13, "PageFlowFrameworkContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "back end, currentItemIndext is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ,histroy size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 510
    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 509
    invoke-static {v13, v14}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 513
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v14, v3, -0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    .line 514
    .local v8, "lastItem":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    invoke-virtual {v8}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d()Landroid/view/View;

    move-result-object v9

    .line 516
    .local v9, "lastView":Landroid/view/View;
    if-nez v9, :cond_3

    .line 517
    invoke-virtual {v8}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->e()Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "url":Ljava/lang/String;
    new-instance v11, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-direct {v11, v13}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V

    .line 521
    .local v11, "webPage":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v11, v10}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    .line 522
    move-object v9, v11

    .line 523
    invoke-virtual {v8, v9}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->a(Landroid/view/View;)V

    .line 526
    .end local v10    # "url":Ljava/lang/String;
    .end local v11    # "webPage":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_3
    invoke-virtual {v8}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->f:Ljava/lang/String;

    .line 527
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    invoke-virtual {v13, v9}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;->addView(Landroid/view/View;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 533
    add-int/lit8 v13, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->setCurrentItemIndex(I)V

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->i()V

    .line 538
    if-eqz p1, :cond_6

    .line 540
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->g:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    sget-object v14, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$AnimationDirection;->Right:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$AnimationDirection;

    invoke-virtual {v13, v14}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$AnimationDirection;)V

    .line 556
    :cond_4
    :goto_1
    const-string/jumbo v13, "PageFlowFrameworkContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "back end, currentItemIndext is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ,histroy size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 557
    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 556
    invoke-static {v13, v14}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    instance-of v13, v9, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v13, :cond_5

    move-object v12, v9

    .line 559
    check-cast v12, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 560
    .local v12, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v12}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getUrl()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;)V

    .line 562
    .end local v12    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_5
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 543
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b:Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    invoke-virtual {v13, v6}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;->removeView(Landroid/view/View;)V

    .line 546
    instance-of v13, v6, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v13, :cond_7

    move-object v12, v6

    .line 547
    check-cast v12, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 548
    .restart local v12    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v12}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v13

    invoke-interface {v13}, Lqk;->n()V

    .line 550
    .end local v12    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_7
    instance-of v13, v9, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v13, :cond_4

    move-object v12, v9

    .line 551
    check-cast v12, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 552
    .restart local v12    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v12}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v13

    invoke-interface {v13}, Lqk;->m()V

    goto :goto_1
.end method

.method public b()V
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentContentView()Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "currentView":Landroid/view/View;
    const-string/jumbo v2, "PageFlowFrameworkContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "homePageHide + currentView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-eqz v0, :cond_0

    .line 177
    instance-of v2, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 178
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 179
    .local v1, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lqk;->c(Z)V

    .line 182
    .end local v1    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->setFluentPageTitleNeedSpeak(Z)V

    .line 1184
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->a()V

    .line 1151
    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 1349
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    .line 1350
    .local v0, "item":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d()Landroid/view/View;

    move-result-object v2

    .line 1351
    .local v2, "view":Landroid/view/View;
    instance-of v4, v2, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 1352
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 1353
    .local v1, "mWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v4

    invoke-interface {v4}, Lqk;->j()V

    .line 1354
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v4

    invoke-interface {v4}, Lqk;->n()V

    goto :goto_0

    .line 1357
    .end local v0    # "item":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    .end local v1    # "mWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->a()V

    .line 1361
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->getFluentPageTilte()Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/FluentPageTitle;->b()V

    .line 1365
    return-void
.end method

.method public getCurrentContentView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1158
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v0

    .line 1159
    .local v0, "currentIndex":I
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    if-gez v0, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-object v2

    .line 1162
    :cond_1
    iget-object v3, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    .line 1163
    .local v1, "currentItem":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    if-eqz v1, :cond_0

    .line 1164
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->d()Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    const/4 v3, 0x1

    .line 1033
    const-string/jumbo v0, "PageFlowFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDownloadStart begin, url is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", contentDisposition is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentContentView()Landroid/view/View;

    move-result-object v8

    .line 1037
    .local v8, "currentView":Landroid/view/View;
    instance-of v0, v8, Lcom/iflytek/mmp/core/webcore/BrowserCore;

    if-eqz v0, :cond_0

    move-object v7, v8

    .line 1038
    check-cast v7, Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .line 1039
    .local v7, "browserCore":Lcom/iflytek/mmp/core/webcore/BrowserCore;
    invoke-virtual {v7}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Z)Z

    .line 1066
    .end local v7    # "browserCore":Lcom/iflytek/mmp/core/webcore/BrowserCore;
    :cond_0
    invoke-static {p1, p3}, Lazk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1069
    .local v5, "fileName":Ljava/lang/String;
    move-object v1, v5

    .line 1070
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    const-string/jumbo v1, "\u5f53\u524d\u4efb\u52a1"

    .line 1075
    :cond_1
    invoke-static {p5, p6}, Lazk;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 1076
    .local v6, "size":Ljava/lang/String;
    const-string/jumbo v0, "PageFlowFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDownloadStart(), title is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", fileName is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", size is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-static {v0}, Lagh;->a(Landroid/content/Context;)Lagh;

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lagh;->a(Landroid/app/Activity;)V

    .line 1081
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-static {v0}, Lagh;->a(Landroid/content/Context;)Lagh;

    move-result-object v0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lagh;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    return v3
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1007
    const-string/jumbo v0, "PageFlowFrameworkContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadResource begin, url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 958
    const-string/jumbo v1, "PageFlowFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageFinished begin, url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/16 v1, 0x64

    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, v2}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(ILandroid/view/View;I)V

    .line 961
    instance-of v1, p1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 962
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setIsNeedInject(Z)V

    move-object v0, p1

    .line 970
    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 971
    .local v0, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lqk;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 972
    const-string/jumbo v1, "javascript:var injectInputImeMockExec = function(service, action, args) {var result = prompt(\'iflytek:[\' +service + \',\' + action + \']\', \'[]\');return result;};var inputs = document.getElementsByTagName(\'input\');if (inputs) {for (var key = 0; key < inputs.length; key++) {if (inputs[key].type == \'text\' || inputs[key].type == \'tel\' || inputs[key].type == \'number\' || inputs[key].type == \'password\' || inputs[key].type == \'email\' || inputs[key].type == \'url\') {inputs[key].addEventListener(\'touchstart\', function() {console.log(\'input ontouchstart begin\');injectInputImeMockExec(\'UIComponents\', \'showMockDialog\' ,[]);console.log(\'input ontouchstart end\');}, false);}}};var textareas = document.getElementsByTagName(\'textarea\');if (textareas) {for (var key = 0; key < textareas.length; key++) {textareas[key].addEventListener(\'touchstart\', function() {console.log(\'textareas ontouchstart begin\');injectInputImeMockExec(\'UIComponents\', \'showMockDialog\' ,[]);console.log(\'textareas ontouchstart end\');}, false);}};window.clearInputFocus = function() {if (inputs) {for (var key = 0; key < inputs.length; key++) {inputs[key].blur();}};if (textareas) {for (var key = 0; key < textareas.length; key++) {textareas[key].blur();}};};"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadUrl(Ljava/lang/String;)V

    .line 978
    .end local v0    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 925
    const-string/jumbo v1, "PageFlowFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageStarted begin, url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-static {}, Lsx;->a()I

    move-result v1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 932
    :cond_0
    instance-of v1, p1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 933
    check-cast v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setIsNeedInject(Z)V

    move-object v0, p1

    .line 940
    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 941
    .local v0, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lqk;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 945
    invoke-direct {p0, v4, p1, v4}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(ILandroid/view/View;I)V

    .line 954
    .end local v0    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 982
    const-string/jumbo v1, "PageFlowFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProgressChanged begin, proggress is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, v1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(ILandroid/view/View;I)V

    .line 985
    instance-of v1, p1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 994
    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 995
    .local v0, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lqk;->a(Landroid/webkit/WebView;I)V

    .line 1003
    .end local v0    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1018
    const-string/jumbo v1, "PageFlowFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceivedError, errorCode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,description is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,failingUrl is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->h()V

    .line 1023
    instance-of v1, p1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1024
    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 1025
    .local v0, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3, p4}, Lqk;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1028
    .end local v0    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 1012
    const-string/jumbo v0, "PageFlowFrameworkContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedTitle begin, title is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-direct {p0, p2, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 1014
    return-void
.end method

.method public setPageFlowTitleState(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 185
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->setVisibility(I)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1172
    const-string/jumbo v1, "PageFlowFrameworkContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTitle, text is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->getCurrentItemIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;

    .line 1174
    .local v0, "currentItem":Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;
    if-eqz v0, :cond_0

    .line 1175
    const-string/jumbo v1, "PageFlowFrameworkContainer"

    const-string/jumbo v2, "currentItem is not null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$a;->b(Ljava/lang/String;)V

    .line 1177
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/browser/pageFlow/titleBar/HomeTitleContainer;->setFluentPageTitle(Ljava/lang/String;)V

    .line 1179
    :cond_0
    return-void
.end method

.method public setTitleClickListener(Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$b;)V
    .locals 0
    .param p1, "titleClickListener"    # Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$b;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->j:Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer$b;

    .line 190
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1188
    const-string/jumbo v0, "PageFlowFrameworkContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldInterceptRequest(), url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", threadInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 18
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 692
    if-nez p1, :cond_0

    .line 693
    const/4 v14, 0x0

    .line 795
    :goto_0
    return v14

    .line 698
    :cond_0
    const-string/jumbo v14, "secure.ctrip.com"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 700
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v5, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 702
    const-string/jumbo v14, "Referer"

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 705
    const/4 v14, 0x1

    goto :goto_0

    .line 710
    .end local v5    # "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz p2, :cond_4

    const-string/jumbo v14, "https://wx.tenpay.com/cgi-bin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_4

    .line 712
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 713
    .restart local v5    # "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 714
    const-string/jumbo v14, "Referer"

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 717
    const/4 v14, 0x1

    goto :goto_0

    .line 721
    .end local v5    # "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->b(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 722
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v14, "android.intent.action.VIEW"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 724
    .local v7, "intent":Landroid/content/Intent;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->e:Landroid/content/Context;

    invoke-virtual {v14, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_1
    const/4 v14, 0x1

    goto :goto_0

    .line 725
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "PageFlowFrameworkContainer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startActivity error, url = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Ltc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 731
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v8, 0x0

    .line 732
    .local v8, "isRedirect":Z
    const/4 v12, 0x0

    .line 733
    .local v12, "webInfo":Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;
    const/4 v13, 0x0

    .line 735
    .local v13, "webTtsStateListener":Lrl;
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v6

    .line 736
    .local v6, "hitTestResult":Landroid/webkit/WebView$HitTestResult;
    const/4 v11, -0x1

    .line 737
    .local v11, "type":I
    const-string/jumbo v3, "undefined"

    .line 738
    .local v3, "extra":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 739
    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v11

    .line 740
    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v3

    .line 742
    :cond_6
    const-string/jumbo v14, "PageFlowFrameworkContainer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "shouldOverrideUrlLoading begin, url is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ,type is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ,extra is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string/jumbo v10, ""

    .line 746
    .local v10, "title":Ljava/lang/String;
    const-string/jumbo v14, "http://m.ctrip.com/webapp/train/#x?from=2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 747
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 748
    .local v4, "extraHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 749
    const-string/jumbo v14, "Referer"

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 753
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 757
    .end local v4    # "extraHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    if-nez v6, :cond_b

    .line 759
    const/4 v8, 0x1

    .line 760
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    if-eqz v14, :cond_9

    move-object/from16 v14, p1

    .line 761
    check-cast v14, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-virtual {v14}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->getWebInfo()Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    move-result-object v12

    move-object/from16 v14, p1

    .line 762
    check-cast v14, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-virtual {v14}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->getWebTtsStateListener()Lrl;

    move-result-object v13

    .line 764
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v10

    .line 782
    :cond_a
    :goto_2
    invoke-static {}, Lws;->a()Lws;

    move-result-object v14

    .line 783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 782
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lws;->b(J)V

    .line 786
    const-string/jumbo v14, "PageFlowFrameworkContainer"

    const-string/jumbo v15, "shouldOverrideUrlLoading  open loc web "

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-eqz v8, :cond_d

    if-eqz v12, :cond_d

    .line 788
    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    .line 789
    const/4 v14, 0x0

    iput-boolean v14, v12, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mIsVoiceResult:Z

    .line 790
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;Lrl;)V

    .line 794
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;)V

    .line 795
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 765
    :cond_b
    if-nez v11, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 767
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v14, :cond_a

    move-object/from16 v9, p1

    .line 768
    check-cast v9, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 769
    .local v9, "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v9}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->d()Z

    move-result v14

    if-nez v14, :cond_a

    .line 771
    const/4 v8, 0x1

    .line 772
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    if-eqz v14, :cond_c

    move-object/from16 v14, p1

    .line 773
    check-cast v14, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-virtual {v14}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->getWebInfo()Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    move-result-object v12

    move-object/from16 v14, p1

    .line 774
    check-cast v14, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-virtual {v14}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->getWebTtsStateListener()Lrl;

    move-result-object v13

    .line 776
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 792
    .end local v9    # "lxWebView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1, v14}, Lcom/iflytek/framework/browser/pageFlow/PageFlowFrameworkContainer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
