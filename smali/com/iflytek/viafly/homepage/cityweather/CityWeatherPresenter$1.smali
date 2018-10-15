.class Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;
.super Ljava/lang/Object;
.source "CityWeatherPresenter.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Landroid/content/Context;Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;->c:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    iput-object p2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;->a:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    iput-object p3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v3, "CityWeatherPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request.onRequestPermissionsResult | threadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v2, 0x0

    .line 279
    .local v2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v0, 0x0

    .line 280
    .local v0, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl;

    .line 281
    .local v1, "item":Lpl;
    invoke-virtual {v1}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->unrationale:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-ne v4, v5, :cond_3

    .line 282
    if-nez v2, :cond_2

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .restart local v2    # "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    :cond_3
    invoke-virtual {v1}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->denied:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-ne v4, v5, :cond_1

    .line 287
    if-nez v0, :cond_4

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 294
    .end local v1    # "item":Lpl;
    :cond_5
    invoke-static {v2}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 295
    const-string/jumbo v3, "CityWeatherPresenter"

    const-string/jumbo v4, "permission granted, get location now."

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;->c:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;->a:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-static {v3, v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto :goto_0

    .line 298
    :cond_6
    const-string/jumbo v3, "CityWeatherPresenter"

    const-string/jumbo v4, "permission onDenied"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;->b:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Lpd;->b(Landroid/content/Context;Ljava/lang/String;)Lpe;

    .line 301
    sget-object v3, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;->a:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    if-ne v3, v4, :cond_7

    .line 302
    const-string/jumbo v3, "CityWeatherPresenter"

    const-string/jumbo v4, "requestCallBack: REQUEST_FAIL "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;->c:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    const/16 v4, 0x3ea

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;->c:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v5}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;ILjava/lang/String;)V

    .line 305
    :cond_7
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;->c:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    sget-object v4, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-static {v3, v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    goto/16 :goto_0
.end method
