.class public Lajs;
.super Lba;
.source "WeatherViewPagerAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lajx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    invoke-direct {p0}, Lba;-><init>()V

    .line 27
    iput-object p1, p0, Lajs;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lajs;->b:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lajs;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lajs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 63
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 47
    new-instance v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;

    iget-object v2, p0, Lajs;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v1, "cityWeatherView":Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v2, p0, Lajs;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajx;

    .line 51
    .local v0, "cityWeather":Lajx;
    if-nez v0, :cond_0

    .line 52
    const/4 v1, 0x0

    .line 58
    .end local v1    # "cityWeatherView":Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
    .end local p1    # "container":Landroid/view/ViewGroup;
    :goto_0
    return-object v1

    .line 55
    .restart local v1    # "cityWeatherView":Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a(Lajx;)V

    .line 57
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p2, Landroid/view/View;

    .end local p2    # "o":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
