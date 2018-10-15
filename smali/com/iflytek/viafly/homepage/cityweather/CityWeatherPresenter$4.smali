.class Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;
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
    .line 539
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    const/4 v6, 0x0

    .line 542
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Z)Z

    .line 543
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    move-object v3, p2

    .line 544
    check-cast v3, Lwa;

    invoke-virtual {v3}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "response":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    const-string/jumbo v3, "CityWeatherPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onresult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->e(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lajp;->b(Ljava/lang/String;)Lajy;

    move-result-object v2

    .line 548
    .local v2, "weatherResult":Lajy;
    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {v2}, Lajy;->a()Lakd;

    move-result-object v1

    .line 550
    .local v1, "weatherFuture":Lakd;
    if-eqz v1, :cond_1

    .line 551
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 552
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v3

    invoke-interface {v3, v1}, Lajr;->a(Lakd;)V

    .line 565
    .end local v0    # "response":Ljava/lang/String;
    .end local v1    # "weatherFuture":Lakd;
    .end local v2    # "weatherResult":Lajy;
    :cond_0
    :goto_0
    return-void

    .line 555
    .restart local v0    # "response":Ljava/lang/String;
    .restart local v1    # "weatherFuture":Lakd;
    .restart local v2    # "weatherResult":Lajy;
    :cond_1
    const-string/jumbo v3, "CityWeatherPresenter"

    const-string/jumbo v4, "onResult: parase weatherCard error"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v3

    invoke-interface {v3, v6}, Lajr;->a(Lakd;)V

    goto :goto_0

    .line 562
    .end local v0    # "response":Ljava/lang/String;
    .end local v1    # "weatherFuture":Lakd;
    .end local v2    # "weatherResult":Lajy;
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 563
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;->a:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;

    move-result-object v3

    invoke-interface {v3, v6}, Lajr;->a(Lakd;)V

    goto :goto_0
.end method
