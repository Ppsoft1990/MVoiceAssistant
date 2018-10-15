.class Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;
.super Ljava/lang/Object;
.source "CityWeatherPresenter.java"

# interfaces
.implements Lyn;


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
    .line 570
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 9
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    const/4 v7, 0x0

    .line 574
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4, v7}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Z)Z

    .line 576
    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    move-object v4, p2

    .line 577
    check-cast v4, Lwa;

    invoke-virtual {v4}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "response":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 579
    const-string/jumbo v4, "CityWeatherPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onresult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->e(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajp;

    move-result-object v4

    invoke-virtual {v4, v1}, Lajp;->a(Ljava/lang/String;)Lajy;

    move-result-object v3

    .line 581
    .local v3, "weatherResult":Lajy;
    if-eqz v3, :cond_3

    .line 582
    invoke-virtual {v3}, Lajy;->b()Lajx;

    move-result-object v2

    .line 583
    .local v2, "weatherCard":Lajx;
    if-eqz v2, :cond_3

    .line 586
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->f(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-nez v4, :cond_2

    .line 587
    const-string/jumbo v4, "CityWeatherPresenter"

    const-string/jumbo v5, "\u5929\u6c14\u60c5\u51b5\u8bf7\u6c42\u6210\u529f\uff0c\u7f13\u5b58\u5b9a\u4f4d\u57ce\u5e02\u7684\u5929\u6c14\u6570\u636e"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a()Lajw;

    move-result-object v0

    .line 590
    .local v0, "locateCity":Lajw;
    invoke-virtual {v2}, Lajx;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lajw;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    const-string/jumbo v4, "CityWeatherPresenter"

    const-string/jumbo v5, "onResult: locatecity weather success"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v0}, Lajw;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lajx;->b(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0}, Lajw;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lajx;->e(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0}, Lajw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lajx;->a(Ljava/lang/String;)V

    .line 595
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v2, v5}, Lajr;->a(Lajx;Z)V

    .line 596
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lajx;)V

    .line 605
    .end local v0    # "locateCity":Lajw;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->g(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-nez v4, :cond_1

    .line 606
    const-string/jumbo v4, "CityWeatherPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onresult: HomeRequestCallBack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->g(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    const/16 v5, 0x3e9

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v6}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;ILjava/lang/String;)V

    .line 610
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    sget-object v5, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->success:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-static {v4, v5}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    .line 627
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "weatherCard":Lajx;
    .end local v3    # "weatherResult":Lajy;
    :goto_1
    return-void

    .line 599
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "weatherCard":Lajx;
    .restart local v3    # "weatherResult":Lajy;
    :cond_2
    const-string/jumbo v4, "CityWeatherPresenter"

    const-string/jumbo v5, "\u5929\u6c14\u60c5\u51b5\u8bf7\u6c42\u6210\u529f\uff0c\u7f13\u5b58\u975e\u5b9a\u4f4d\u57ce\u5e02\u7684\u5929\u6c14\u6570\u636e"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v4

    invoke-interface {v4, v2, v7}, Lajr;->a(Lajx;Z)V

    .line 601
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lajx;)V

    goto :goto_0

    .line 618
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "weatherCard":Lajx;
    .end local v3    # "weatherResult":Lajy;
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 619
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v4

    invoke-interface {v4}, Lajr;->b()V

    .line 621
    :cond_4
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->g(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-nez v4, :cond_5

    .line 622
    const-string/jumbo v4, "CityWeatherPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onresult: homeRequestId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->g(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    const/16 v5, 0x3ea

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v6}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;ILjava/lang/String;)V

    .line 626
    :cond_5
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    sget-object v5, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->loadingFail:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-static {v4, v5}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    goto :goto_1
.end method
