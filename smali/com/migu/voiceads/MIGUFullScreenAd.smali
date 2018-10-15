.class public Lcom/migu/voiceads/MIGUFullScreenAd;
.super Lcom/migu/voiceads/view/AdLayout;


# static fields
.field public static a:Lcom/migu/voiceads/view/FullScreenAdView;

.field private static d:Lcom/migu/voiceads/MIGUFullScreenAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->d:Lcom/migu/voiceads/MIGUFullScreenAd;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/migu/voiceads/view/AdLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/migu/voiceads/view/FullScreenAdView;

    iget-object v4, p0, Lcom/migu/voiceads/MIGUFullScreenAd;->c:Lcom/migu/voiceads/bussiness/d;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/migu/voiceads/view/FullScreenAdView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/migu/voiceads/bussiness/d;F)V

    sput-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    return-void
.end method

.method public static declared-synchronized createFullScreenAd(Landroid/content/Context;Ljava/lang/String;)Lcom/migu/voiceads/MIGUFullScreenAd;
    .locals 2

    const-class v0, Lcom/migu/voiceads/MIGUFullScreenAd;

    monitor-enter v0

    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/migu/voiceads/MIGUFullScreenAd;->createFullScreenAd(Landroid/content/Context;Ljava/lang/String;F)Lcom/migu/voiceads/MIGUFullScreenAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createFullScreenAd(Landroid/content/Context;Ljava/lang/String;F)Lcom/migu/voiceads/MIGUFullScreenAd;
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-class v2, Lcom/migu/voiceads/MIGUFullScreenAd;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_2

    :cond_0
    const-string/jumbo v1, "Ad_Android_SDK"

    const-string/jumbo v3, "Ad constructor parameters error!"

    invoke-static {v1, v3}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/migu/voiceads/MIGUFullScreenAd;->checkManifest(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3

    cmpl-float v0, p2, v1

    if-lez v0, :cond_4

    :cond_3
    move p2, v1

    :cond_4
    new-instance v0, Lcom/migu/voiceads/MIGUFullScreenAd;

    invoke-direct {v0, p0, p1, p2}, Lcom/migu/voiceads/MIGUFullScreenAd;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    sput-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->d:Lcom/migu/voiceads/MIGUFullScreenAd;

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->d:Lcom/migu/voiceads/MIGUFullScreenAd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public backLandingUrl(Z)V
    .locals 1

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/view/FullScreenAdView;->a(Z)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/migu/voiceads/view/AdLayout;->destroy()V

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/FullScreenAdView;->n()V

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    new-instance v1, Lcom/migu/voiceads/a;

    invoke-direct {v1, p0}, Lcom/migu/voiceads/a;-><init>(Lcom/migu/voiceads/MIGUFullScreenAd;)V

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/view/FullScreenAdView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->d:Lcom/migu/voiceads/MIGUFullScreenAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
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

.method public destroyAd()V
    .locals 1

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/FullScreenAdView;->q()V

    :cond_0
    return-void
.end method

.method public declared-synchronized loadAd(Lcom/migu/voiceads/MIGUAdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/view/FullScreenAdView;->a(Lcom/migu/voiceads/MIGUAdListener;)V
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
    iget-object v0, p0, Lcom/migu/voiceads/MIGUFullScreenAd;->c:Lcom/migu/voiceads/bussiness/d;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/d;->a()Z

    invoke-super {p0}, Lcom/migu/voiceads/view/AdLayout;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error in FullscreenAd\'s onDetachedFromWindow: "

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

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/view/FullScreenAdView;->a(Lcom/migu/voiceads/MIGUAdSize;)V

    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/view/FullScreenAdView;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized showAd()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/voiceads/MIGUFullScreenAd;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/FullScreenAdView;->g()V
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
