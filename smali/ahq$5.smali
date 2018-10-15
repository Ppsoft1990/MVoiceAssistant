.class Lahq$5;
.super Ljava/lang/Object;
.source "HomeSplashScreenHelper.java"

# interfaces
.implements Lbdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahq;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahq;


# direct methods
.method constructor <init>(Lahq;)V
    .locals 0
    .param p1, "this$0"    # Lahq;

    .prologue
    .line 407
    iput-object p1, p0, Lahq$5;->a:Lahq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 501
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, "ImageLoader onLoading Cancelled"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 436
    iget-object v3, p0, Lahq$5;->a:Lahq;

    invoke-static {v3, v4}, Lahq;->f(Lahq;Z)Z

    .line 437
    iget-object v3, p0, Lahq$5;->a:Lahq;

    iget-object v4, p0, Lahq$5;->a:Lahq;

    invoke-static {v4}, Lahq;->h(Lahq;)Ljava/util/Timer;

    move-result-object v4

    iget-object v5, p0, Lahq$5;->a:Lahq;

    .line 438
    invoke-static {v5}, Lahq;->g(Lahq;)Ljava/util/TimerTask;

    move-result-object v5

    .line 437
    invoke-static {v3, v4, v5}, Lahq;->a(Lahq;Ljava/util/Timer;Ljava/util/TimerTask;)V

    .line 439
    const-string/jumbo v3, "HomeSplashScreenHelper"

    const-string/jumbo v4, "ImageLoader load Complete"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v3, p0, Lahq$5;->a:Lahq;

    invoke-static {v3}, Lahq;->r(Lahq;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    :goto_0
    return-void

    .line 442
    :cond_0
    :try_start_0
    iget-object v3, p0, Lahq$5;->a:Lahq;

    invoke-virtual {v3}, Lahq;->r()Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz p3, :cond_4

    .line 443
    iget-object v3, p0, Lahq$5;->a:Lahq;

    invoke-virtual {v3}, Lahq;->r()Landroid/widget/RelativeLayout;

    move-result-object v3

    const v4, 0x7f0b01aa

    .line 444
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 445
    .local v0, "adImage":Landroid/widget/ImageView;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    iget-object v3, p0, Lahq$5;->a:Lahq;

    invoke-static {v3}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "clickurl"

    .line 447
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 448
    iget-object v3, p0, Lahq$5;->a:Lahq;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lahq;->g(Lahq;Z)Z

    .line 451
    :cond_1
    iget-object v3, p0, Lahq$5;->a:Lahq;

    const-wide/16 v4, 0xbb8

    invoke-static {v3, v4, v5}, Lahq;->b(Lahq;J)J

    .line 452
    iget-object v3, p0, Lahq$5;->a:Lahq;

    invoke-static {v3}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "pagetime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 453
    .local v2, "pageTime":I
    if-lez v2, :cond_3

    .line 455
    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    .line 456
    const/4 v2, 0x5

    .line 458
    :cond_2
    iget-object v3, p0, Lahq$5;->a:Lahq;

    mul-int/lit16 v4, v2, 0x3e8

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lahq;->b(Lahq;J)J

    .line 461
    :cond_3
    iget-object v4, p0, Lahq$5;->a:Lahq;

    iget-object v3, p0, Lahq$5;->a:Lahq;

    invoke-virtual {v3}, Lahq;->r()Landroid/widget/RelativeLayout;

    move-result-object v3

    const v5, 0x7f0b01ab

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-static {v4, v3}, Lahq;->a(Lahq;Landroid/widget/Button;)Landroid/widget/Button;

    .line 463
    iget-object v3, p0, Lahq$5;->a:Lahq;

    iget-object v4, p0, Lahq$5;->a:Lahq;

    invoke-static {v4}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "0"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v3, v4}, Lahq;->h(Lahq;Z)Z

    .line 464
    iget-object v3, p0, Lahq$5;->a:Lahq;

    invoke-static {v3}, Lahq;->t(Lahq;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lahq$5$1;

    invoke-direct {v4, p0}, Lahq$5$1;-><init>(Lahq$5;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v3, p0, Lahq$5;->a:Lahq;

    invoke-virtual {v3}, Lahq;->q()Lahw;

    move-result-object v3

    iget-object v4, p0, Lahq$5;->a:Lahq;

    invoke-static {v4}, Lahq;->s(Lahq;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lahw;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 493
    .end local v0    # "adImage":Landroid/widget/ImageView;
    .end local v2    # "pageTime":I
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HomeSplashScreenHelper"

    const-string/jumbo v4, "after onLoadingComplete handle exception"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 490
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lahq$5;->a:Lahq;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lahq;->d(Lahq;Z)Z

    .line 491
    iget-object v3, p0, Lahq$5;->a:Lahq;

    invoke-virtual {v3}, Lahq;->k()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 12
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 417
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, "ImageLoader load failed"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lahq$5;->a:Lahq;

    iget-object v1, p0, Lahq$5;->a:Lahq;

    invoke-static {v1}, Lahq;->h(Lahq;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lahq$5;->a:Lahq;

    invoke-static {v2}, Lahq;->g(Lahq;)Ljava/util/TimerTask;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lahq;->a(Lahq;Ljava/util/Timer;Ljava/util/TimerTask;)V

    .line 419
    iget-object v0, p0, Lahq$5;->a:Lahq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lahq;->d(Lahq;Z)Z

    .line 420
    iget-object v0, p0, Lahq$5;->a:Lahq;

    invoke-virtual {v0}, Lahq;->k()V

    .line 421
    const-wide/16 v10, 0x0

    .line 422
    .local v10, "zero":J
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_SPLASH_AD_LAST_SUCCESS_TIME"

    invoke-virtual {v0, v1, v10, v11}, Lil;->a(Ljava/lang/String;J)V

    .line 424
    iget-object v0, p0, Lahq$5;->a:Lahq;

    invoke-static {v0}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "platformid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lahq$5;->a:Lahq;

    invoke-static {v0}, Lahq;->q(Lahq;)Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->otherunknow:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    iget-object v2, p0, Lahq$5;->a:Lahq;

    .line 426
    invoke-static {v2}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lahq$5;->a:Lahq;

    .line 427
    invoke-static {v3}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "platformslotid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lahq$5;->a:Lahq;

    .line 428
    invoke-static {v4}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "platformid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lahq$5;->a:Lahq;

    .line 429
    invoke-static {v5}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "ignorenoticeurls"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    iget-object v6, p0, Lahq$5;->a:Lahq;

    invoke-static {v6}, Lahq;->l(Lahq;)I

    move-result v6

    iget-object v7, p0, Lahq$5;->a:Lahq;

    invoke-static {v7}, Lahq;->o(Lahq;)I

    move-result v7

    iget-object v8, p0, Lahq$5;->a:Lahq;

    invoke-static {v8}, Lahq;->k(Lahq;)I

    move-result v8

    iget-object v9, p0, Lahq$5;->a:Lahq;

    invoke-static {v9}, Lahq;->p(Lahq;)I

    move-result v9

    .line 425
    invoke-virtual/range {v0 .. v9}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->splashReportServer(Lcom/iflytek/viafly/ad/business/ADBehaviorType;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONArray;IIII)V

    .line 431
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 411
    const-string/jumbo v0, "HomeSplashScreenHelper"

    const-string/jumbo v1, "ImageLoader onLoadingStarted"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method
