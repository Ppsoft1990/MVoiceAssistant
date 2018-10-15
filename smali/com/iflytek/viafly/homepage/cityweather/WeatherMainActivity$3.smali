.class Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;
.super Ljava/lang/Object;
.source "WeatherMainActivity.java"

# interfaces
.implements Lajr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 378
    :cond_0
    return-void
.end method

.method public a(Lajw;)V
    .locals 2
    .param p1, "cityArea"    # Lajw;

    .prologue
    .line 365
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 366
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 367
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    :cond_0
    return-void
.end method

.method public a(Lajx;)V
    .locals 0
    .param p1, "cityWeather"    # Lajx;

    .prologue
    .line 383
    return-void
.end method

.method public a(Lajx;Z)V
    .locals 5
    .param p1, "cityWeather"    # Lajx;
    .param p2, "isLocate"    # Z

    .prologue
    .line 388
    const-string/jumbo v3, "WeatherMainActivity"

    const-string/jumbo v4, "onLoadWeatherSuccess: "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Z)V

    .line 391
    if-eqz p1, :cond_3

    .line 394
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3, p1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajx;)V

    .line 397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 398
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajx;

    .line 399
    .local v0, "cityWeatherCardData":Lajx;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lajx;->a(Lajx;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    invoke-virtual {p1}, Lajx;->d()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lajx;->a(Ljava/util/List;)V

    .line 401
    invoke-virtual {p1}, Lajx;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lajx;->d(Ljava/lang/String;)V

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "cityWeatherCardData":Lajx;
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 406
    .local v2, "message":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 407
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 409
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    :cond_2
    if-eqz p2, :cond_3

    .line 413
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b()V

    .line 416
    .end local v1    # "i":I
    .end local v2    # "message":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public a(Lakd;)V
    .locals 10
    .param p1, "weatherFuture"    # Lakd;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 427
    const-string/jumbo v5, "WeatherMainActivity"

    const-string/jumbo v6, "onWeatherFutureResult: "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lakd;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 429
    invoke-virtual {p1}, Lakd;->a()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "futureRemind":Ljava/lang/String;
    invoke-virtual {p1}, Lakd;->b()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "addressName":Ljava/lang/String;
    const-string/jumbo v5, "WeatherMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onWeatherFutureResult: addressName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string/jumbo v5, "WeatherMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onWeatherFutureResult: futureRemind "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lajw;

    .line 435
    .local v3, "localCity":Lajw;
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajx;

    .line 436
    .local v1, "cityWeatherData":Lajx;
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 437
    const-string/jumbo v5, "WeatherMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onWeatherFutureResult: local address "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lajw;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {v3}, Lajw;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 439
    invoke-virtual {v1, v2}, Lajx;->c(Ljava/lang/String;)V

    .line 442
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 443
    .local v4, "message":Landroid/os/Message;
    iput v9, v4, Landroid/os/Message;->what:I

    .line 444
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 445
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 446
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    .end local v0    # "addressName":Ljava/lang/String;
    .end local v2    # "futureRemind":Ljava/lang/String;
    .end local v3    # "localCity":Lajw;
    .end local v4    # "message":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 450
    .end local v1    # "cityWeatherData":Lajx;
    :cond_2
    const-string/jumbo v5, "WeatherMainActivity"

    const-string/jumbo v6, "onWeatherFutureResult: fail "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajx;

    .line 452
    .restart local v1    # "cityWeatherData":Lajx;
    if-eqz v1, :cond_1

    .line 453
    const-string/jumbo v5, "WeatherMainActivity"

    const-string/jumbo v6, "onWeatherFutureResult: futureRemind fail"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Lajx;->c(Ljava/lang/String;)V

    .line 456
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 457
    .restart local v4    # "message":Landroid/os/Message;
    iput v9, v4, Landroid/os/Message;->what:I

    .line 458
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 459
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 460
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 420
    const-string/jumbo v0, "WeatherMainActivity"

    const-string/jumbo v1, "onLoadWeatherFail: "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Z)V

    .line 422
    return-void
.end method
