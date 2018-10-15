.class Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;
.super Ljava/lang/Object;
.source "WeatherMainActivity.java"

# interfaces
.implements Lajq;


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
    .line 329
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lajw;Z)V
    .locals 7
    .param p1, "cityArea"    # Lajw;
    .param p2, "isExist"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 332
    if-eqz p1, :cond_2

    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, "showIndex":I
    if-eqz p2, :cond_3

    .line 335
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3, p1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajw;)I

    move-result v1

    .line 336
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lajx;

    .line 337
    .local v2, "weatherData":Lajx;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lajx;->j()Z

    move-result v3

    if-nez v3, :cond_1

    .line 338
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3, v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Z)V

    .line 339
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->detail:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-virtual {v3, p1, v6, v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lajw;ZLcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    .line 349
    .end local v2    # "weatherData":Lajx;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->g(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p1, v5}, Lajo;->a(Lajw;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 352
    .local v0, "message":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 353
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 354
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 355
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "showIndex":I
    :cond_2
    return-void

    .line 342
    .restart local v1    # "showIndex":I
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->h(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)V

    .line 343
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 345
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3, v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Z)V

    .line 346
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->detail:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-virtual {v3, p1, v6, v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lajw;ZLcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto :goto_0
.end method
