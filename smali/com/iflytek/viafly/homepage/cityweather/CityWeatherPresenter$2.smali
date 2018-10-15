.class Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$2;
.super Ljava/lang/Object;
.source "CityWeatherPresenter.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

.field final synthetic b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$2;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    iput-object p2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$2;->a:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x3

    .line 325
    const-string/jumbo v1, "CityWeatherPresenter"

    const-string/jumbo v2, "update()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-eqz p2, :cond_1

    instance-of v1, p2, Lcom/iflytek/common/lbs/XAddress;

    if-eqz v1, :cond_1

    check-cast p2, Lcom/iflytek/common/lbs/XAddress;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/iflytek/common/lbs/XAddress;->getErrorCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 327
    const-string/jumbo v1, "CityWeatherPresenter"

    const-string/jumbo v2, "startWeatherRequest()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$2;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$2;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 331
    .local v0, "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 332
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$2;->a:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$2;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    const-string/jumbo v1, "CityWeatherPresenter"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Loa;->a()Loa;

    move-result-object v1

    invoke-virtual {v1, p0}, Loa;->b(Ljava/util/Observer;)V

    .line 341
    return-void

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$2;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    goto :goto_0
.end method
