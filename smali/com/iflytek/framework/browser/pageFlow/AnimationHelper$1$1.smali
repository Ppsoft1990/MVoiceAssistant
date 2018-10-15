.class Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    invoke-static {v1}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->b(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    iget-object v2, v2, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    invoke-static {v2}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/PageContainer;->removeView(Landroid/view/View;)V

    .line 108
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    invoke-static {v1}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    invoke-static {v1}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 110
    .local v0, "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v1

    invoke-interface {v1}, Lqk;->n()V

    .line 113
    .end local v0    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    invoke-static {v1}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->c(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    invoke-static {v1}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->c(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 115
    .restart local v0    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getBrowserEventListener()Lqk;

    move-result-object v1

    invoke-interface {v1}, Lqk;->m()V

    .line 118
    .end local v0    # "webView":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    invoke-static {v1, v3}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->a(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;Landroid/view/View;)Landroid/view/View;

    .line 119
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper$1;->a:Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;

    invoke-static {v1, v3}, Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;->b(Lcom/iflytek/framework/browser/pageFlow/AnimationHelper;Landroid/view/View;)Landroid/view/View;

    .line 120
    return-void
.end method
