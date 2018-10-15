.class public Lcom/migu/voiceads/view/BannerAdView;
.super Lcom/migu/voiceads/view/AdView;


# instance fields
.field private v:Z

.field private w:Landroid/app/Activity;

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/migu/voiceads/bussiness/d;)V
    .locals 6

    sget-object v4, Lcom/migu/voiceads/bussiness/a$a;->a:Lcom/migu/voiceads/bussiness/a$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/migu/voiceads/view/AdView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/migu/voiceads/bussiness/a$a;Lcom/migu/voiceads/bussiness/d;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/view/BannerAdView;->v:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/migu/voiceads/view/BannerAdView;->x:Z

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/migu/voiceads/view/BannerAdView;->w:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/migu/voiceads/MIGUAdListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/migu/voiceads/view/BannerAdView;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/migu/voiceads/view/BannerAdView;->v:Z

    invoke-super {p0, p1}, Lcom/migu/voiceads/view/AdView;->a(Lcom/migu/voiceads/MIGUAdListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/view/BannerAdView;->q:Z

    return-void
.end method

.method public b(Lcom/migu/voiceads/MIGUAdSize;)Z
    .locals 1

    sget-object v0, Lcom/migu/voiceads/MIGUAdSize;->BANNER:Lcom/migu/voiceads/MIGUAdSize;

    invoke-virtual {p1, v0}, Lcom/migu/voiceads/MIGUAdSize;->isSizeValid(Lcom/migu/voiceads/MIGUAdSize;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized d(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "banner_recycle"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->l:Lcom/migu/voiceads/bussiness/d;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/d;->a()Z

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Activity has destroyed!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->w:Landroid/app/Activity;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->w:Landroid/app/Activity;

    invoke-static {v0}, Lcom/migu/voiceads/utils/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Ad is invisible, please check the app\'s state!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->m:Lcom/migu/voiceads/bussiness/b;

    iget-object v1, p0, Lcom/migu/voiceads/view/BannerAdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/migu/voiceads/bussiness/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/migu/voiceads/view/BannerAdView;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(Landroid/os/Message;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/migu/voiceads/view/BannerAdView;->x:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/view/BannerAdView;->x:Z

    :cond_4
    invoke-super {p0, p1}, Lcom/migu/voiceads/view/AdView;->d(Landroid/os/Message;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/migu/voiceads/view/BannerAdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Ad is invisible, recycle delayed!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->m:Lcom/migu/voiceads/bussiness/b;

    iget-object v1, p0, Lcom/migu/voiceads/view/BannerAdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/migu/voiceads/bussiness/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/migu/voiceads/view/BannerAdView;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(Landroid/os/Message;I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/migu/voiceads/view/BannerAdView;->w:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/migu/voiceads/utils/a;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Ad is invisible,not in screen, recycle delayed!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->m:Lcom/migu/voiceads/bussiness/b;

    iget-object v1, p0, Lcom/migu/voiceads/view/BannerAdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/migu/voiceads/bussiness/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/migu/voiceads/view/BannerAdView;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(Landroid/os/Message;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized h()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->w:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "====>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/view/BannerAdView;->h:Lcom/migu/voiceads/bussiness/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/view/BannerAdView;->f:Lcom/migu/voiceads/a/a;

    invoke-virtual {v2}, Lcom/migu/voiceads/a/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "recycleLoadAd"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "There isn\'t valid parent widget!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/migu/voiceads/bussiness/a$c;->e:Lcom/migu/voiceads/bussiness/a$c;

    iget-object v1, p0, Lcom/migu/voiceads/view/BannerAdView;->m:Lcom/migu/voiceads/bussiness/b;

    invoke-virtual {v1}, Lcom/migu/voiceads/bussiness/b;->a()Lcom/migu/voiceads/bussiness/a$c;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Ad is requesting, can\'t recycle load ad!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/migu/voiceads/view/BannerAdView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->m:Lcom/migu/voiceads/bussiness/b;

    iget-object v1, p0, Lcom/migu/voiceads/view/BannerAdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v2, 0x1

    const-string/jumbo v3, "banner_recycle"

    invoke-virtual {v1, v2, v3}, Lcom/migu/voiceads/bussiness/b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/migu/voiceads/view/BannerAdView;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(Landroid/os/Message;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/view/BannerAdView;->v:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->w:Landroid/app/Activity;

    invoke-static {v0}, Lcom/migu/voiceads/a/d;->v(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/migu/voiceads/view/BannerAdView;->w:Landroid/app/Activity;

    invoke-static {v1}, Lcom/migu/voiceads/a/d;->w(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/migu/voiceads/view/BannerAdView;->f:Lcom/migu/voiceads/a/a;

    invoke-virtual {v1}, Lcom/migu/voiceads/a/a;->b()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/migu/voiceads/view/BannerAdView;->f:Lcom/migu/voiceads/a/a;

    invoke-virtual {v2}, Lcom/migu/voiceads/a/a;->a()I

    move-result v2

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/migu/voiceads/view/BannerAdView;->b:Landroid/widget/RelativeLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/view/BannerAdView;->a(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->l:Lcom/migu/voiceads/bussiness/d;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/BannerAdView;->m:Lcom/migu/voiceads/bussiness/b;

    sget-object v1, Lcom/migu/voiceads/bussiness/a$c;->f:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/bussiness/b;->a(Lcom/migu/voiceads/bussiness/a$c;)V

    invoke-super {p0}, Lcom/migu/voiceads/view/AdView;->onDetachedFromWindow()V
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
