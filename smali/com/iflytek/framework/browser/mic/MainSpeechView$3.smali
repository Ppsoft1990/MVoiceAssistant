.class Lcom/iflytek/framework/browser/mic/MainSpeechView$3;
.super Ljava/lang/Object;
.source "MainSpeechView.java"

# interfaces
.implements Lpf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/mic/MainSpeechView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/mic/MainSpeechView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$3;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unRationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$3;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 356
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$3;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->f(Lcom/iflytek/framework/browser/mic/MainSpeechView;)V

    .line 357
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k()V

    .line 362
    :cond_0
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$3;->a:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->e(Lcom/iflytek/framework/browser/mic/MainSpeechView;)V

    .line 346
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->k()V

    .line 351
    :cond_0
    return-void
.end method
