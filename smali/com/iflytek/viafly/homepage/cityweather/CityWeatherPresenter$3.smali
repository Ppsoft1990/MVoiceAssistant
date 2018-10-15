.class Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;
.super Ljava/lang/Object;
.source "CityWeatherPresenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 471
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 507
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 473
    :pswitch_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    .line 474
    const-string/jumbo v1, "CityWeatherPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u72b6\u6001\u6539\u53d8\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->noNetWork:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 477
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v1

    invoke-interface {v1}, Lajr;->b()V

    goto :goto_0

    .line 484
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    if-eqz v1, :cond_0

    .line 486
    const-string/jumbo v1, "CityWeatherPresenter"

    const-string/jumbo v2, "\u5f00\u59cb\u8c03\u7528\u63a5\u53e3"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    .line 488
    .local v0, "requestEntrance":Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto :goto_0

    .line 494
    .end local v0    # "requestEntrance":Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;
    :pswitch_2
    const-string/jumbo v1, "CityWeatherPresenter"

    const-string/jumbo v2, "\u91cd\u8bd5\u63a5\u53e3\u8c03\u7528"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    if-eqz v1, :cond_0

    .line 497
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    .line 498
    .restart local v0    # "requestEntrance":Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->d(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)I

    .line 499
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto/16 :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
