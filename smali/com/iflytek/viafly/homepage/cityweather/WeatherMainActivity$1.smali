.class Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;
.super Landroid/os/Handler;
.source "WeatherMainActivity.java"


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
    .line 73
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 76
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    const-string/jumbo v6, "WeatherMainActivity"

    const-string/jumbo v7, "handleMessage: MSG_CITY_LOCATE_SUCCESS"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lajw;

    if-eqz v6, :cond_0

    .line 80
    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lajw;

    invoke-static {v7, v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajw;)Lajw;

    .line 81
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lajw;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->i()Lajx;

    move-result-object v2

    .line 85
    .local v2, "locateCityWeather":Lajx;
    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lajw;

    move-result-object v6

    invoke-virtual {v2, v6}, Lajx;->a(Lajw;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_1
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-static {v6, v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;I)I

    .line 94
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)I

    move-result v6

    if-nez v6, :cond_0

    .line 96
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->g(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lajw;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lajo;->a(Lajw;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 99
    .local v4, "view":Landroid/view/View;
    instance-of v6, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 100
    check-cast v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;

    .line 101
    .local v1, "cityWeatherView":Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a(Lajx;)V

    goto/16 :goto_0

    .line 88
    .end local v1    # "cityWeatherView":Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lajw;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajw;)Lajx;

    move-result-object v2

    .line 89
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    .end local v2    # "locateCityWeather":Lajx;
    :pswitch_1
    const-string/jumbo v6, "WeatherMainActivity"

    const-string/jumbo v7, "handleMessage: MSG_CITY_LOCATE_ERROR"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    new-instance v7, Lajw;

    invoke-direct {v7}, Lajw;-><init>()V

    invoke-static {v6, v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajw;)Lajw;

    .line 111
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lajw;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lajx;

    invoke-direct {v7}, Lajx;-><init>()V

    invoke-interface {v6, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-static {v6, v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;I)I

    .line 115
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)I

    move-result v6

    if-nez v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->g(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/widget/TextView;

    move-result-object v6

    const-string/jumbo v7, "\u5929\u6c14"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 120
    .restart local v4    # "view":Landroid/view/View;
    instance-of v6, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 121
    check-cast v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;

    .line 122
    .restart local v1    # "cityWeatherView":Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lajx;

    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a(Lajx;)V

    goto/16 :goto_0

    .line 129
    .end local v1    # "cityWeatherView":Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
    .end local v4    # "view":Landroid/view/View;
    :pswitch_2
    if-eqz p1, :cond_2

    .line 130
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 131
    .local v3, "showIndex":I
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 132
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 136
    .end local v3    # "showIndex":I
    :cond_2
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    const-string/jumbo v7, "weather_main"

    invoke-static {v6, v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lajx;

    if-eqz v6, :cond_0

    .line 142
    const-string/jumbo v6, "WeatherMainActivity"

    const-string/jumbo v7, "handleMessage: load weather VIEW_REFRESH"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-static {v6, v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;I)I

    .line 144
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    .line 146
    .local v0, "cityArea":Lajw;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lajx;

    .line 147
    .local v5, "weatherData":Lajx;
    invoke-virtual {v5, v0}, Lajx;->a(Lajw;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 149
    .restart local v4    # "view":Landroid/view/View;
    instance-of v6, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 150
    check-cast v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;

    .line 151
    .restart local v1    # "cityWeatherView":Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a(Lajx;)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "cityArea":Lajw;
    .end local v1    # "cityWeatherView":Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "weatherData":Lajx;
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lajx;

    if-eqz v6, :cond_0

    .line 159
    const-string/jumbo v6, "WeatherMainActivity"

    const-string/jumbo v7, "handleMessage: WEATHER_FUTURE_REFRESH"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lajx;

    .line 162
    .restart local v5    # "weatherData":Lajx;
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-static {v6, v7}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;I)I

    .line 163
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)I

    move-result v6

    if-nez v6, :cond_0

    .line 164
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;->a:Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 165
    .restart local v4    # "view":Landroid/view/View;
    instance-of v6, v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;

    if-eqz v6, :cond_0

    move-object v1, v4

    .line 166
    check-cast v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;

    .line 167
    .restart local v1    # "cityWeatherView":Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a(Lajx;)V

    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
