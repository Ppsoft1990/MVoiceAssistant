.class public Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
.super Lajj;
.source "CityWeatherPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:J

.field private d:I

.field private final e:J

.field private f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Laju;

.field private k:Lajt;

.field private l:Landroid/content/Context;

.field private m:Landroid/os/Handler;

.field private n:Lajp;

.field private o:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lajr;

.field private t:J

.field private u:J

.field private v:Landroid/os/Handler$Callback;

.field private w:Lyn;

.field private x:Lyn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lajr;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lajr;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lajj;-><init>()V

    .line 51
    const-string/jumbo v0, "CityWeatherPresenter"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b:Ljava/lang/String;

    .line 53
    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c:J

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->d:I

    .line 58
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->e:J

    .line 60
    iput v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->f:I

    .line 62
    iput v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->g:I

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->h:I

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->i:I

    .line 468
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$3;-><init>(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->v:Landroid/os/Handler$Callback;

    .line 539
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$4;-><init>(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->w:Lyn;

    .line 570
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$5;-><init>(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->x:Lyn;

    .line 108
    iput-boolean v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->r:Z

    .line 109
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->p:Z

    .line 110
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->q:Z

    .line 111
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->l:Landroid/content/Context;

    .line 112
    new-instance v0, Laju;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->x:Lyn;

    invoke-direct {v0, v1, v2}, Laju;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->j:Laju;

    .line 113
    new-instance v0, Lajt;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->w:Lyn;

    invoke-direct {v0, v1, v2}, Lajt;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->k:Lajt;

    .line 114
    new-instance v0, Lajp;

    invoke-direct {v0}, Lajp;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->n:Lajp;

    .line 116
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->init:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->o:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    .line 117
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->v:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->m:Landroid/os/Handler;

    .line 119
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lajx;)V
    .locals 9
    .param p1, "newCityWeather"    # Lajx;

    .prologue
    .line 666
    if-eqz p1, :cond_2

    .line 667
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_CITYS_WEATHER_DATA"

    invoke-virtual {v6, v7}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "cityWeatherCache":Ljava/lang/String;
    invoke-static {v1}, Lajo;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 670
    .local v2, "cityWeatherList":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    const/4 v5, 0x0

    .line 671
    .local v5, "isExist":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 672
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajx;

    .line 673
    .local v0, "cityWeather":Lajx;
    invoke-virtual {p1, v0}, Lajx;->a(Lajx;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 674
    const-string/jumbo v6, "CityWeatherPresenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveWeatherCardData: updateCache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lajx;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p1}, Lajx;->d()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lajx;->a(Ljava/util/List;)V

    .line 676
    invoke-virtual {p1}, Lajx;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lajx;->d(Ljava/lang/String;)V

    .line 678
    const/4 v5, 0x1

    .line 683
    .end local v0    # "cityWeather":Lajx;
    :cond_0
    if-nez v5, :cond_1

    .line 684
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    const-string/jumbo v6, "CityWeatherPresenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveWeatherCardData: addCache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lajx;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_1
    invoke-static {v2}, Lajo;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, "cityWeathers":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_CITYS_WEATHER_DATA"

    invoke-virtual {v6, v7, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .end local v1    # "cityWeatherCache":Ljava/lang/String;
    .end local v2    # "cityWeatherList":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    .end local v3    # "cityWeathers":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "isExist":Z
    :cond_2
    return-void

    .line 671
    .restart local v0    # "cityWeather":Lajx;
    .restart local v1    # "cityWeatherCache":Ljava/lang/String;
    .restart local v2    # "cityWeatherList":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    .restart local v4    # "i":I
    .restart local v5    # "isExist":Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V
    .locals 2
    .param p1, "stateEnum"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->m:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lajx;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .param p1, "x1"    # Lajx;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lajx;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .param p1, "x1"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .param p1, "x1"    # Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->o:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .param p1, "x1"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->o:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    return-object p1
.end method

.method private b(Lajx;)V
    .locals 4
    .param p1, "data"    # Lajx;

    .prologue
    .line 700
    if-eqz p1, :cond_1

    .line 701
    invoke-virtual {p1}, Lajx;->g()Lorg/json/JSONObject;

    move-result-object v0

    .line 702
    .local v0, "object":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 703
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_LOCATE_WEATHER_DATA"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .end local v0    # "object":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_LOCATE_WEATHER_DATA"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lajx;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .param p1, "x1"    # Lajx;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lajx;)V

    return-void
.end method

.method private b(Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V
    .locals 2
    .param p1, "requestEntrance"    # Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    .prologue
    .line 321
    const-string/jumbo v0, "CityWeatherPresenter"

    const-string/jumbo v1, "registerObserever()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$2;-><init>(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    invoke-virtual {v0, v1}, Loa;->a(Ljava/util/Observer;)V

    .line 343
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    const-string/jumbo v0, "CityWeatherPresenter"

    const-string/jumbo v1, "lbs is not locating"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loa;->a(Z)V

    .line 347
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->locating:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    .line 348
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajr;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .prologue
    .line 50
    iget v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->f:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)Lajp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->n:Lajp;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->u:J

    return-wide v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->t:J

    return-wide v0
.end method


# virtual methods
.method protected a()Lajw;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 130
    new-instance v2, Lajw;

    invoke-direct {v2}, Lajw;-><init>()V

    .line 132
    .local v2, "cityArea":Lajw;
    invoke-static {}, Loa;->a()Loa;

    move-result-object v9

    invoke-virtual {v9}, Loa;->d()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 133
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getProvince()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 134
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 135
    const-string/jumbo v9, "CityWeatherPresenter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLocateCity: success province "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getProvince()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string/jumbo v9, "CityWeatherPresenter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLocateCity: success city "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string/jumbo v9, "CityWeatherPresenter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLocateCity: success area "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getArea()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string/jumbo v9, "CityWeatherPresenter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLocateCity: success address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getTimeStamp()J

    move-result-wide v6

    .line 141
    .local v6, "locateTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 143
    .local v4, "currentTime":J
    sub-long v10, v4, v6

    const-wide/32 v12, 0x6ddd00

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    .line 144
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getProvince()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "provinceName":Ljava/lang/String;
    const-string/jumbo v9, "\u7701"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 146
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 149
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "cityName":Ljava/lang/String;
    const-string/jumbo v9, "\u5e02"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 151
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 154
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getArea()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "areaName":Ljava/lang/String;
    invoke-virtual {v2, v8}, Lajw;->d(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, v3}, Lajw;->c(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2, v1}, Lajw;->b(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lajw;->a(Ljava/lang/String;)V

    .line 165
    .end local v1    # "areaName":Ljava/lang/String;
    .end local v3    # "cityName":Ljava/lang/String;
    .end local v4    # "currentTime":J
    .end local v6    # "locateTime":J
    .end local v8    # "provinceName":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a:Lail;

    .line 353
    return-void
.end method

.method protected a(Lajw;ZLcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V
    .locals 6
    .param p1, "cityArea"    # Lajw;
    .param p2, "isLocate"    # Z
    .param p3, "requestEntrance"    # Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    .prologue
    .line 188
    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->p:Z

    if-eqz v2, :cond_1

    .line 189
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "\u6b63\u5728\u8bf7\u6c42\u63a5\u53e3"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    if-ne v2, p3, :cond_0

    .line 191
    const/16 v2, 0x3ea

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(ILjava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42\u63a5\u53e3"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->j:Laju;

    invoke-virtual {v2, p1, p2}, Laju;->a(Lajw;Z)J

    move-result-wide v0

    .line 198
    .local v0, "requsetId":J
    if-eqz p2, :cond_2

    .line 199
    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->u:J

    .line 202
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    if-ne v2, p3, :cond_3

    .line 203
    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->t:J

    .line 204
    const-string/jumbo v2, "CityWeatherPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryWeatherInfo: homeRequestId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->t:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->p:Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    const-string/jumbo v0, "CityWeatherPresenter"

    const-string/jumbo v1, "pull_to_refresh"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->loading:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->o:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->locating:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->o:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    if-ne v0, v1, :cond_1

    .line 243
    :cond_0
    const-string/jumbo v0, "CityWeatherPresenter"

    const-string/jumbo v1, "\u6b63\u5728\u67e5\u8be2\u63a5\u53e3\uff0c\u6216\u8005\u8bf7\u6c42\u5b9a\u4f4d"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/16 v0, 0x3ea

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(ILjava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->o:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    if-ne v0, v1, :cond_2

    .line 248
    const-string/jumbo v0, "CityWeatherPresenter"

    const-string/jumbo v1, "handlePullToRefresh: LocatingFail"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Landroid/content/Context;Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto :goto_0

    .line 251
    :cond_2
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "requestEntrance"    # Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    .prologue
    .line 259
    const-string/jumbo v1, "CityWeatherPresenter"

    const-string/jumbo v2, "requestLocate"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Loa;->a()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->d()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    const-string/jumbo v1, "CityWeatherPresenter"

    const-string/jumbo v2, "startWeatherRequest()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    .line 315
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-static {}, Lhl;->k()I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 265
    const-string/jumbo v1, "CityWeatherPresenter"

    const-string/jumbo v2, "above android 6.0, request permission first."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v1, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$1;-><init>(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    goto :goto_0

    .line 310
    .end local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v1, "CityWeatherPresenter"

    const-string/jumbo v2, "below android 6.0, get location now."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto :goto_0
.end method

.method protected a(Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V
    .locals 10
    .param p1, "requestEntrance"    # Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x3ea

    .line 365
    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->p:Z

    if-eqz v2, :cond_1

    .line 366
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "\u6b63\u5728\u8bf7\u6c42\u63a5\u53e3"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    if-ne v2, p1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(ILjava/lang/String;)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 374
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a()Lajw;

    move-result-object v0

    .line 375
    .local v0, "locateCity":Lajw;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lajw;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    if-eqz v2, :cond_2

    .line 377
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "getLocateCity: success"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    invoke-interface {v2, v0}, Lajr;->a(Lajw;)V

    .line 381
    :cond_2
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "\u6709\u7f51\u7edc\u4e14\u6709\u5730\u5740\u4fe1\u606f\uff0c\u76f4\u63a5\u5f00\u59cb\u8bf7\u6c42"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0, v0, v5, p1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lajw;ZLcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto :goto_0

    .line 385
    :cond_3
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "\u6709\u7f51\u7edc \u5730\u5740\u4fe1\u606f\u65e0\u6548"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Loa;->a()Loa;

    move-result-object v2

    invoke-virtual {v2}, Loa;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 387
    iget v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->f:I

    iget v3, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->d:I

    if-ge v2, v3, :cond_4

    .line 388
    const-string/jumbo v2, "CityWeatherPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6b63\u5728\u5b9a\u4f4d\uff1a\u7b2c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6b21\u5c1d\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->locating:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    .line 390
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->m:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->m:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 394
    .local v1, "message":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 395
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 399
    .end local v1    # "message":Landroid/os/Message;
    :cond_4
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "\u5b9a\u4f4d\u5931\u8d25"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    .line 402
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    if-ne v2, p1, :cond_5

    .line 403
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(ILjava/lang/String;)V

    .line 406
    :cond_5
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    if-eqz v2, :cond_0

    .line 407
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "getLocateCity: fail"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    invoke-interface {v2}, Lajr;->a()V

    goto/16 :goto_0

    .line 412
    :cond_6
    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->r:Z

    if-eqz v2, :cond_7

    .line 413
    iput-boolean v6, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->r:Z

    .line 414
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "\u521d\u59cb\u5316\u5b9a\u4f4d\u5931\u8d25\uff0c3\u79d2\u540e\u91cd\u8bd5"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->locating:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    .line 416
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->m:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->m:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 420
    .restart local v1    # "message":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 421
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 422
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 426
    .end local v1    # "message":Landroid/os/Message;
    :cond_7
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    .line 428
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    if-ne v2, p1, :cond_8

    .line 429
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(ILjava/lang/String;)V

    .line 432
    :cond_8
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    if-eqz v2, :cond_0

    .line 433
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "getLocateCity: Fail"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    invoke-interface {v2}, Lajr;->a()V

    goto/16 :goto_0

    .line 439
    .end local v0    # "locateCity":Lajw;
    :cond_9
    const-string/jumbo v2, "CityWeatherPresenter"

    const-string/jumbo v3, "\u65e0\u7f51\u7edc\uff0c\u7ed3\u675f"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iput-boolean v6, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->p:Z

    .line 441
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->noNetWork:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    .line 443
    sget-object v2, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    if-ne v2, p1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->q:Z

    if-eqz v0, :cond_0

    .line 215
    const-string/jumbo v0, "CityWeatherPresenter"

    const-string/jumbo v1, "queryWeatherFutureInfo: \u6b63\u5728\u8bf7\u6c42\u63a5\u53e3"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->k:Lajt;

    invoke-virtual {v0}, Lajt;->a()J

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->q:Z

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lajr;->a(Lakd;)V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->q:Z

    goto :goto_0
.end method

.method protected b(Lajw;ZLcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V
    .locals 2
    .param p1, "cityArea"    # Lajw;
    .param p2, "isLocate"    # Z
    .param p3, "requestEntrance"    # Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->p:Z

    if-eqz v0, :cond_0

    .line 455
    const-string/jumbo v0, "CityWeatherPresenter"

    const-string/jumbo v1, "\u6b63\u5728\u8bf7\u6c42\u63a5\u53e3"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lajw;ZLcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto :goto_0

    .line 462
    :cond_1
    const-string/jumbo v0, "CityWeatherPresenter"

    const-string/jumbo v1, "\u65e0\u7f51\u7edc\uff0c\u7ed3\u675f"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->p:Z

    .line 464
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;->noNetWork:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter$WeatherStateEnum;)V

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_CITYS_WEATHER_DATA"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "cityWeatherCache":Ljava/lang/String;
    invoke-static {v0}, Lajo;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 521
    .local v1, "cityWeatherList":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    const-string/jumbo v2, "CityWeatherPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWeathersByCache: weathersize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-object v1
.end method

.method public d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_CITYS_DATA"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "cityCache":Ljava/lang/String;
    invoke-static {v0}, Lajo;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 535
    .local v1, "cityList":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    return-object v1
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a()Lajw;

    move-result-object v0

    .line 636
    .local v0, "locateCity":Lajw;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lajw;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    if-eqz v1, :cond_0

    .line 638
    const-string/jumbo v1, "CityWeatherPresenter"

    const-string/jumbo v2, "getLocateCity: success"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    invoke-interface {v1, v0}, Lajr;->a(Lajw;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    if-eqz v1, :cond_0

    .line 643
    const-string/jumbo v1, "CityWeatherPresenter"

    const-string/jumbo v2, "getLocateCity: fail"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    invoke-interface {v1}, Lajr;->a()V

    goto :goto_0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->i()Lajx;

    move-result-object v0

    .line 654
    .local v0, "cardData":Lajx;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->s:Lajr;

    invoke-interface {v1, v0}, Lajr;->a(Lajx;)V

    .line 657
    :cond_0
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 233
    const-string/jumbo v0, "CityWeatherPresenter"

    const-string/jumbo v1, "getBusinessInfo"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    .line 235
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    const-string/jumbo v0, "Weatherweather_category"

    return-object v0
.end method

.method protected i()Lajx;
    .locals 8

    .prologue
    .line 717
    const/4 v1, 0x0

    .line 718
    .local v1, "cardData":Lajx;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.IFLY_LOCATE_WEATHER_DATA"

    invoke-virtual {v5, v6}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "cache":Ljava/lang/String;
    const-string/jumbo v5, "CityWeatherPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5b9a\u4f4d\u57ce\u5e02\u7f13\u5b58\u6570\u636e\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 722
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 723
    .local v4, "object":Lorg/json/JSONObject;
    new-instance v2, Lajx;

    invoke-direct {v2, v4}, Lajx;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cardData":Lajx;
    .local v2, "cardData":Lajx;
    move-object v1, v2

    .line 728
    .end local v2    # "cardData":Lajx;
    .end local v4    # "object":Lorg/json/JSONObject;
    .restart local v1    # "cardData":Lajx;
    :cond_0
    :goto_0
    return-object v1

    .line 724
    :catch_0
    move-exception v3

    .line 725
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "CityWeatherPresenter"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
