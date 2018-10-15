.class public Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "HomeWeatherCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private H:Landroid/os/Handler;

.field private I:Z

.field private J:Lajw;

.field private K:Lajr;

.field private L:Landroid/os/Handler$Callback;

.field private final o:Ljava/lang/String;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeCardItem"    # Laic;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 42
    const-string/jumbo v0, "HomeWeatherCardView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->o:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->B:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->C:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->D:I

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->E:I

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->F:I

    .line 75
    const/4 v0, 0x6

    iput v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->G:I

    .line 189
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$1;-><init>(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->K:Lajr;

    .line 249
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;-><init>(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->L:Landroid/os/Handler$Callback;

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->g()V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;Lajw;)Lajw;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;
    .param p1, "x1"    # Lajw;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->J:Lajw;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->H:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lajx;Lajw;)V
    .locals 12
    .param p1, "cityWeather"    # Lajx;
    .param p2, "cityArea"    # Lajw;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 313
    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lajx;->a(Lajw;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 314
    invoke-virtual {p1}, Lajx;->j()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lajx;->h()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 315
    invoke-virtual {p1}, Lajx;->d()Ljava/util/List;

    move-result-object v5

    .line 316
    .local v5, "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    if-eqz v5, :cond_1

    .line 318
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakc;

    .line 322
    .local v0, "forecastToday":Lakc;
    if-eqz v0, :cond_1

    .line 323
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Lakc;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Lakc;->f()Lajz;

    move-result-object v7

    invoke-virtual {v7}, Lajz;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->u:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lakc;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u00b0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->t:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lakc;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u00b0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {v0}, Lakc;->e()Lakb;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 330
    invoke-virtual {v0}, Lakc;->e()Lakb;

    move-result-object v6

    invoke-virtual {v6}, Lakb;->a()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "pm25Num":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 335
    invoke-virtual {v0, v4}, Lakc;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "pm25Des":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lakc;->d(Ljava/lang/String;)I

    move-result v2

    .line 339
    .local v2, "pm25BgColor":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, -0x1

    if-ne v6, v2, :cond_2

    .line 340
    :cond_0
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->s:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    .end local v2    # "pm25BgColor":I
    .end local v3    # "pm25Des":Ljava/lang/String;
    .end local v4    # "pm25Num":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "HomeWeatherCardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "refreshView:tempnow "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lakc;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->p:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v6}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lakc;Landroid/widget/ImageView;)V

    .line 368
    .end local v0    # "forecastToday":Lakc;
    .end local v5    # "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    :cond_1
    :goto_1
    return-void

    .line 342
    .restart local v0    # "forecastToday":Lakc;
    .restart local v2    # "pm25BgColor":I
    .restart local v3    # "pm25Des":Ljava/lang/String;
    .restart local v4    # "pm25Num":Ljava/lang/String;
    .restart local v5    # "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    :cond_2
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->s:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->s:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->s:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 346
    .local v1, "myGrad":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 349
    .end local v1    # "myGrad":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "pm25BgColor":I
    .end local v3    # "pm25Des":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->s:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 352
    .end local v4    # "pm25Num":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "HomeWeatherCardView"

    const-string/jumbo v7, "refreshView:pm25 = null "

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->s:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 362
    .end local v0    # "forecastToday":Lakc;
    .end local v5    # "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    :cond_5
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020273

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 366
    iget-object v6, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Lakc;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "data"    # Lakc;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 379
    invoke-virtual {p1}, Lakc;->f()Lajz;

    move-result-object v0

    .line 380
    .local v0, "condition":Lajz;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lajz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    invoke-virtual {v0}, Lajz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lakc;->a(Lajz;Z)I

    move-result v1

    .line 383
    .local v1, "imageResId":I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 384
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v2

    invoke-virtual {v0}, Lajz;->b()Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->getListOptions()Lbcu;

    move-result-object v4

    .line 384
    invoke-virtual {v2, v3, p2, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 391
    .end local v1    # "imageResId":I
    :cond_0
    :goto_0
    return-void

    .line 388
    .restart local v1    # "imageResId":I
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;Lajx;Lajw;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;
    .param p1, "x1"    # Lajx;
    .param p2, "x2"    # Lajw;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lajx;Lajw;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->A:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->L:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->H:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->K:Lajr;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;-><init>(Landroid/content/Context;Lajr;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->A:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    .line 121
    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->w:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->y:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Lajw;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->J:Lajw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->A:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->g()V

    .line 131
    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 156
    const-string/jumbo v0, "HomeWeatherCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-nez p1, :cond_1

    .line 187
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 161
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a()V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->A:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 170
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->I:Z

    .line 172
    :pswitch_4
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->I:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a()V

    goto :goto_0

    .line 181
    :pswitch_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->I:Z

    .line 182
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->H:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public d()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->I:Z

    .line 93
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 94
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009f

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 95
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Landroid/widget/LinearLayout;)V

    .line 97
    const v2, 0x7f0b034e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->p:Landroid/widget/ImageView;

    .line 98
    const v2, 0x7f0b0347

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->q:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f0b0424

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->r:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f0b0354

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->s:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f0b034a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->t:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f0b034c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->u:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0b0429

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->v:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f0b0428

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->w:Landroid/widget/ImageView;

    .line 106
    const v2, 0x7f0b0420

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->z:Landroid/widget/LinearLayout;

    .line 107
    const v2, 0x7f0b0421

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->x:Landroid/widget/LinearLayout;

    .line 108
    const v2, 0x7f0b0426

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->y:Landroid/widget/LinearLayout;

    .line 110
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->b()V

    .line 113
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->A:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->e()V

    .line 126
    return-void
.end method

.method public getListOptions()Lbcu;
    .locals 4

    .prologue
    const v3, 0x7f020273

    .line 394
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 396
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 400
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 402
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 403
    invoke-virtual {v1, v3}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 404
    invoke-virtual {v1, v3}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 405
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 406
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->d(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 143
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/homepage/cityweather/WeatherMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7f0b0420
        :pswitch_0
    .end packed-switch
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->A:Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/homepage/cityweather/CityWeatherPresenter;->a(Lail;)V

    .line 136
    return-void
.end method
