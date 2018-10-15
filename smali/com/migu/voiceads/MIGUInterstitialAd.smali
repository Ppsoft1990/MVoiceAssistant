.class public Lcom/migu/voiceads/MIGUInterstitialAd;
.super Lcom/migu/voiceads/view/AdLayout;


# static fields
.field public static a:Lcom/migu/voiceads/view/InterstitialAdView;

.field private static d:Lcom/migu/voiceads/MIGUInterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->d:Lcom/migu/voiceads/MIGUInterstitialAd;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/migu/voiceads/view/AdLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/migu/voiceads/view/InterstitialAdView;

    iget-object v1, p0, Lcom/migu/voiceads/MIGUInterstitialAd;->c:Lcom/migu/voiceads/bussiness/d;

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/migu/voiceads/view/InterstitialAdView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/migu/voiceads/bussiness/d;)V

    sput-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    return-void
.end method

.method public static declared-synchronized createInterstitialAd(Landroid/content/Context;Ljava/lang/String;)Lcom/migu/voiceads/MIGUInterstitialAd;
    .locals 3

    const/4 v0, 0x0

    const-class v1, Lcom/migu/voiceads/MIGUInterstitialAd;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/migu/voiceads/MIGUInterstitialAd;->checkManifest(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->d:Lcom/migu/voiceads/MIGUInterstitialAd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/migu/voiceads/MIGUInterstitialAd;

    invoke-direct {v0, p0, p1}, Lcom/migu/voiceads/MIGUInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->d:Lcom/migu/voiceads/MIGUInterstitialAd;

    :cond_2
    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->d:Lcom/migu/voiceads/MIGUInterstitialAd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public backLandingUrl(Z)V
    .locals 1

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/view/InterstitialAdView;->a(Z)V

    :cond_0
    return-void
.end method

.method protected destroy()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/migu/voiceads/view/AdLayout;->destroy()V

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/InterstitialAdView;->n()V

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/InterstitialAdView;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->d:Lcom/migu/voiceads/MIGUInterstitialAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public destroyAd()V
    .locals 1

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/InterstitialAdView;->q()V

    :cond_0
    return-void
.end method

.method public declared-synchronized loadAd(Lcom/migu/voiceads/MIGUAdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/view/InterstitialAdView;->a(Lcom/migu/voiceads/MIGUAdListener;)V
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

.method protected onDetachedFromWindow()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/migu/voiceads/view/AdLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/migu/voiceads/MIGUInterstitialAd;->c:Lcom/migu/voiceads/bussiness/d;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/d;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error in InterstitialAd\'s onDetachedFromWindow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/migu/voiceads/utils/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdSize(Lcom/migu/voiceads/MIGUAdSize;)V
    .locals 1

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/view/InterstitialAdView;->a(Lcom/migu/voiceads/MIGUAdSize;)V

    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/view/InterstitialAdView;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized showAd()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUInterstitialAd;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/InterstitialAdView;->g()V
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
