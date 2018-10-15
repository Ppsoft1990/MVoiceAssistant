.class Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;
.super Ljava/lang/Object;
.source "WeatherMainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


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
    .line 468
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 513
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .prologue
    .line 473
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    .line 477
    const-string/jumbo v4, "WeatherMainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPageSelected: position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    .line 480
    .local v0, "cityArea":Lajw;
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->g(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v0, v7}, Lajo;->a(Lajw;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajx;

    .line 483
    .local v1, "cityWeather":Lajx;
    if-eqz v1, :cond_0

    .line 484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 485
    .local v2, "message":Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v2, Landroid/os/Message;->what:I

    .line 486
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 487
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 488
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 493
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    if-nez p1, :cond_2

    .line 495
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->j(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)V

    .line 508
    :cond_1
    :goto_0
    return-void

    .line 498
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v4, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajw;)Z

    move-result v3

    .line 499
    .local v3, "needRequest":Z
    if-eqz v3, :cond_1

    .line 501
    invoke-virtual {v1}, Lajx;->j()Z

    move-result v4

    if-nez v4, :cond_3

    .line 502
    const-string/jumbo v4, "WeatherMainActivity"

    const-string/jumbo v5, "onPageSelected: showLoading "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v4, v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Z)V

    .line 505
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->detail:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-virtual {v4, v0, v5, v6}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lajw;ZLcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto :goto_0
.end method
