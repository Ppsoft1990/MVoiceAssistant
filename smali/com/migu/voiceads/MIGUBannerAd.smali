.class public Lcom/migu/voiceads/MIGUBannerAd;
.super Lcom/migu/voiceads/view/AdLayout;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/migu/voiceads/view/BannerAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/migu/voiceads/view/AdLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/migu/voiceads/view/BannerAdView;

    iget-object v1, p0, Lcom/migu/voiceads/MIGUBannerAd;->c:Lcom/migu/voiceads/bussiness/d;

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/migu/voiceads/view/BannerAdView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/migu/voiceads/bussiness/d;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static createBannerAd(Landroid/content/Context;Ljava/lang/String;)Lcom/migu/voiceads/MIGUBannerAd;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const-string/jumbo v1, "Ad_Android_SDK"

    const-string/jumbo v2, "Ad constructor parameters error!"

    invoke-static {v1, v2}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/migu/voiceads/MIGUBannerAd;->checkManifest(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "Ad_Android_SDK"

    const-string/jumbo v2, "please check your uses-permission"

    invoke-static {v1, v2}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/migu/voiceads/MIGUBannerAd;

    invoke-direct {v0, p0, p1}, Lcom/migu/voiceads/MIGUBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public backLandingUrl(Z)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/view/BannerAdView;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/view/BannerAdView;->a(Z)V

    :cond_1
    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/migu/voiceads/view/AdLayout;->destroy()V

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/view/BannerAdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/BannerAdView;->n()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadAd(Lcom/migu/voiceads/MIGUAdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/view/BannerAdView;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/view/BannerAdView;->a(Lcom/migu/voiceads/MIGUAdListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAdSize(Lcom/migu/voiceads/MIGUAdSize;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/view/BannerAdView;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/view/BannerAdView;->a(Lcom/migu/voiceads/MIGUAdSize;)V

    :cond_1
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/view/BannerAdView;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/view/BannerAdView;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized showAd()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUBannerAd;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/view/BannerAdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/BannerAdView;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
