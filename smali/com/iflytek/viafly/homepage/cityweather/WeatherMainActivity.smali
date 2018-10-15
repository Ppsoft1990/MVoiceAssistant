.class public Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "WeatherMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lajq;

.field private C:Lajr;

.field private D:Landroid/support/v4/view/ViewPager$f;

.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

.field private m:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lajw;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Lajs;

.field private s:I

.field private t:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->p:Ljava/util/List;

    .line 57
    const-string/jumbo v0, "weather_main"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->q:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->s:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->u:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->v:I

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->w:I

    .line 68
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->x:I

    .line 69
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->y:I

    .line 71
    iput v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->z:I

    .line 73
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$1;-><init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->A:Landroid/os/Handler;

    .line 329
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$2;-><init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->B:Lajq;

    .line 361
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$3;-><init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->C:Lajr;

    .line 468
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity$4;-><init>(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->D:Landroid/support/v4/view/ViewPager$f;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->z:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lajw;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->o:Lajw;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajw;)Lajw;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;
    .param p1, "x1"    # Lajw;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->o:Lajw;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 211
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f:Landroid/widget/ImageView;

    .line 212
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->g:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->h:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 217
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->k:Landroid/widget/LinearLayout;

    .line 221
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->l:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .line 222
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->l:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->B:Lajq;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->setCityAreaOperateCallback(Lajq;)V

    .line 224
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->m:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    .line 226
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->j:Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;

    .line 232
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->j:Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->D:Landroid/support/v4/view/ViewPager$f;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 233
    return-void
.end method

.method private a(Lajx;)V
    .locals 5
    .param p1, "cityWeather"    # Lajx;

    .prologue
    .line 588
    new-instance v2, Lajw;

    invoke-direct {v2}, Lajw;-><init>()V

    .line 589
    .local v2, "newCityArea":Lajw;
    invoke-virtual {p1}, Lajx;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lajw;->d(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p1}, Lajx;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lajw;->c(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p1}, Lajx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lajw;->b(Ljava/lang/String;)V

    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "isExsit":Z
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    .line 595
    .local v0, "cityArea":Lajw;
    invoke-virtual {p1, v0}, Lajx;->a(Lajw;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    const/4 v1, 0x1

    .line 601
    .end local v0    # "cityArea":Lajw;
    :cond_1
    if-nez v1, :cond_2

    .line 602
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajx;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;
    .param p1, "x1"    # Lajx;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lajx;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 518
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->q:Ljava/lang/String;

    .line 520
    const-string/jumbo v0, "weather_main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->m:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->l:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e()V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const-string/jumbo v0, "city_search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->m:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->l:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6dfb\u52a0\u57ce\u5e02"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 548
    :cond_2
    const-string/jumbo v0, "city_manage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->m:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->l:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "\u57ce\u5e02\u5217\u8868"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    const/4 v1, 0x0

    .line 567
    if-eqz p1, :cond_2

    .line 568
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->t:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->t:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->t:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 572
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->t:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->setCancelable(Z)V

    .line 573
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->t:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->show()V

    .line 579
    :cond_1
    :goto_0
    return-void

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->t:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->t:Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CustomProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method private a(Lajw;)Z
    .locals 3
    .param p1, "cityArea"    # Lajw;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    .line 613
    .local v0, "mCityArea":Lajw;
    invoke-virtual {v0, p1}, Lajw;->a(Lajw;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    const/4 v1, 0x0

    .line 617
    .end local v0    # "mCityArea":Lajw;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private b(Lajw;)I
    .locals 3
    .param p1, "cityArea"    # Lajw;

    .prologue
    .line 632
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 633
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 634
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajw;

    .line 635
    .local v1, "mCityArea":Lajw;
    invoke-virtual {p1, v1}, Lajw;->a(Lajw;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    .end local v0    # "i":I
    .end local v1    # "mCityArea":Lajw;
    :goto_1
    return v0

    .line 633
    .restart local v0    # "i":I
    .restart local v1    # "mCityArea":Lajw;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    .end local v0    # "i":I
    .end local v1    # "mCityArea":Lajw;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajw;)Lajx;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;
    .param p1, "x1"    # Lajw;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c(Lajw;)Lajx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 237
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    .line 238
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c:Ljava/util/List;

    .line 240
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.IFLY_ADD_DEFAULT_CITYS"

    invoke-virtual {v5, v6, v8}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v3

    .line 241
    .local v3, "isAddedCitys":Z
    const-string/jumbo v5, "WeatherMainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initData: isAddedCitys "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eqz v3, :cond_0

    .line 243
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v5}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->d()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    .line 251
    :goto_0
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->s:I

    .line 254
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v5}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->c()Ljava/util/List;

    move-result-object v2

    .line 255
    .local v2, "cityWeathers":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    invoke-static {v5, v2}, Lajo;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c:Ljava/util/List;

    .line 258
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v5}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a()Lajw;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->o:Lajw;

    .line 259
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->o:Lajw;

    invoke-interface {v5, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 262
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->g:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->o:Lajw;

    invoke-static {v6, v9}, Lajo;->a(Lajw;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v5}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->i()Lajx;

    move-result-object v4

    .line 266
    .local v4, "locateCityWeather":Lajx;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->o:Lajw;

    invoke-virtual {v4, v5}, Lajx;->a(Lajw;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c:Ljava/util/List;

    invoke-interface {v5, v8, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 273
    :goto_1
    new-instance v5, Lajs;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c:Ljava/util/List;

    invoke-direct {v5, p0, v6}, Lajs;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->r:Lajs;

    .line 274
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->r:Lajs;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Lba;)V

    .line 275
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->j:Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 276
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->j:Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;

    invoke-virtual {v5}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator;->notifyDataSetChanged()V

    .line 277
    return-void

    .line 245
    .end local v2    # "cityWeathers":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    .end local v4    # "locateCityWeather":Lajx;
    :cond_0
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.IFLY_ADD_DEFAULT_CITYS"

    invoke-virtual {v5, v6, v9}, Lil;->a(Ljava/lang/String;Z)V

    .line 248
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->f()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lajo;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "cityAreas":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.IFLY_CITYS_DATA"

    invoke-virtual {v5, v6, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    .end local v0    # "cityAreas":Ljava/lang/String;
    .restart local v2    # "cityWeathers":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    .restart local v4    # "locateCityWeather":Lajx;
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->o:Lajw;

    invoke-direct {p0, v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c(Lajw;)Lajx;

    move-result-object v1

    .line 270
    .local v1, "cityWeather":Lajx;
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c:Ljava/util/List;

    invoke-interface {v5, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajw;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;
    .param p1, "x1"    # Lajw;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b(Lajw;)I

    move-result v0

    return v0
.end method

.method private c(Lajw;)Lajx;
    .locals 2
    .param p1, "locateCity"    # Lajw;

    .prologue
    .line 649
    new-instance v0, Lajx;

    invoke-direct {v0}, Lajx;-><init>()V

    .line 650
    .local v0, "cityWeather":Lajx;
    if-eqz p1, :cond_0

    .line 651
    invoke-virtual {p1}, Lajw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajx;->b(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Lajw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajx;->e(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Lajw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajx;->a(Ljava/lang/String;)V

    .line 655
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 284
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->C:Lajr;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;-><init>(Landroid/content/Context;Lajr;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .line 285
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 318
    const-string/jumbo v0, "weather_main"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->finish()V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const-string/jumbo v0, "city_manage"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b()V

    .line 322
    const-string/jumbo v0, "weather_main"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    const-string/jumbo v0, "city_search"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->l:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a()V

    .line 325
    const-string/jumbo v0, "weather_main"

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;Lajw;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;
    .param p1, "x1"    # Lajw;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lajw;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 663
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c:Ljava/util/List;

    if-nez v3, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    .line 668
    .local v0, "cityArea":Lajw;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajx;

    .line 669
    .local v1, "cityWeather":Lajx;
    invoke-virtual {v0}, Lajw;->g()Z

    move-result v3

    if-nez v3, :cond_2

    .line 670
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    sget-object v4, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->detail:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-virtual {v3, p0, v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Landroid/content/Context;Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    goto :goto_0

    .line 673
    :cond_2
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Lajw;)Z

    move-result v2

    .line 674
    .local v2, "needRequest":Z
    if-eqz v2, :cond_4

    .line 676
    invoke-virtual {v1}, Lajx;->j()Z

    move-result v3

    if-nez v3, :cond_3

    .line 677
    const-string/jumbo v3, "WeatherMainActivity"

    const-string/jumbo v4, "onPageSelected: showLoading "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-direct {p0, v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Z)V

    .line 680
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    sget-object v4, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->detail:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-virtual {v3, v0, v5, v4}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b(Lajw;ZLcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;)V

    .line 684
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->b()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->z:I

    return v0
.end method

.method private f()Ljava/util/List;
    .locals 9
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
    const/4 v8, 0x0

    .line 694
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v4, "cityList":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    new-instance v0, Lajw;

    const-string/jumbo v5, "\u5317\u4eac"

    const-string/jumbo v6, "\u5317\u4eac"

    const-string/jumbo v7, ""

    invoke-direct {v0, v5, v6, v7, v8}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 696
    .local v0, "cityArea1":Lajw;
    new-instance v1, Lajw;

    const-string/jumbo v5, "\u4e0a\u6d77"

    const-string/jumbo v6, "\u4e0a\u6d77"

    const-string/jumbo v7, ""

    invoke-direct {v1, v5, v6, v7, v8}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 697
    .local v1, "cityArea2":Lajw;
    new-instance v2, Lajw;

    const-string/jumbo v5, "\u5e7f\u4e1c"

    const-string/jumbo v6, "\u5e7f\u5dde"

    const-string/jumbo v7, ""

    invoke-direct {v2, v5, v6, v7, v8}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 698
    .local v2, "cityArea3":Lajw;
    new-instance v3, Lajw;

    const-string/jumbo v5, "\u5e7f\u4e1c"

    const-string/jumbo v6, "\u6df1\u5733"

    const-string/jumbo v7, ""

    invoke-direct {v3, v5, v6, v7, v8}, Lajw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 699
    .local v3, "cityArea4":Lajw;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    return-object v4
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b()V

    return-void
.end method

.method static synthetic i(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 315
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 292
    const-string/jumbo v1, "\u6700\u591a\u53ef\u6dfb\u52a010\u4e2a\u57ce\u5e02"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 294
    :cond_0
    const-string/jumbo v1, "city_search"

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :pswitch_2
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->d()Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, "cityAreaList":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->m:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->o:Lajw;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a(Lajw;Ljava/util/List;)V

    .line 302
    const-string/jumbo v1, "city_manage"

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v0    # "cityAreaList":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    :pswitch_3
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d()V

    goto :goto_0

    .line 310
    :pswitch_4
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b()V

    .line 311
    const-string/jumbo v1, "weather_main"

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0085
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->setContentView(I)V

    .line 184
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 186
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->c()V

    .line 188
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a()V

    .line 190
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->b()V

    .line 193
    invoke-static {p0}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT90033"

    invoke-virtual {v1, v2}, Lwy;->a(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_count"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {p0}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT90034"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 200
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100023"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 622
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->d()V

    .line 624
    const/4 v0, 0x1

    .line 626
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 708
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onStart()V

    .line 709
    const-string/jumbo v0, "WeatherMainActivity"

    const-string/jumbo v1, "onStart: "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;->e()V

    .line 714
    :cond_0
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method
