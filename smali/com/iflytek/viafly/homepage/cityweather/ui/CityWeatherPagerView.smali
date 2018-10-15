.class public Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;
.super Landroid/widget/LinearLayout;
.source "CityWeatherPagerView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/view/LayoutInflater;

.field private r:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a:Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a:Landroid/content/Context;

    .line 73
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private a(Lakc;Landroid/widget/ImageView;Z)V
    .locals 5
    .param p1, "data"    # Lakc;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "isRealTime"    # Z

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "condition":Lajz;
    if-eqz p3, :cond_1

    .line 288
    invoke-virtual {p1}, Lakc;->f()Lajz;

    move-result-object v0

    .line 293
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lajz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-virtual {v0}, Lajz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    if-nez p3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v0, v2}, Lakc;->a(Lajz;Z)I

    move-result v1

    .line 296
    .local v1, "imageResId":I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_3

    .line 297
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v2

    invoke-virtual {v0}, Lajz;->b()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->getListOptions()Lbcu;

    move-result-object v4

    .line 297
    invoke-virtual {v2, v3, p2, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 304
    .end local v1    # "imageResId":I
    :cond_0
    :goto_2
    return-void

    .line 290
    :cond_1
    invoke-virtual {p1}, Lakc;->a()Lajz;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 301
    .restart local v1    # "imageResId":I
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->q:Landroid/view/LayoutInflater;

    .line 79
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030074

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 82
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    const v3, 0x7f0b0345

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->r:Landroid/widget/LinearLayout;

    .line 86
    const v3, 0x7f0b0351

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->b:Landroid/widget/TextView;

    .line 87
    const v3, 0x7f0b0352

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->c:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f0b0353

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->d:Landroid/widget/TextView;

    .line 90
    const v3, 0x7f0b034d

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->j:Landroid/widget/TextView;

    .line 92
    const v3, 0x7f0b034e

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->e:Landroid/widget/ImageView;

    .line 93
    const v3, 0x7f0b0347

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->f:Landroid/widget/TextView;

    .line 94
    const v3, 0x7f0b034c

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->g:Landroid/widget/TextView;

    .line 95
    const v3, 0x7f0b034a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->h:Landroid/widget/TextView;

    .line 96
    const v3, 0x7f0b0346

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->i:Landroid/widget/TextView;

    .line 98
    const v3, 0x7f0b0349

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->k:Landroid/widget/TextView;

    .line 99
    const v3, 0x7f0b0354

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->l:Landroid/widget/TextView;

    .line 101
    const v3, 0x7f0b034b

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->o:Landroid/widget/TextView;

    .line 102
    const v3, 0x7f0b0350

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->n:Landroid/view/View;

    .line 103
    const v3, 0x7f0b034f

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->m:Landroid/widget/TextView;

    .line 104
    const v3, 0x7f0b0332

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->p:Landroid/widget/LinearLayout;

    .line 105
    return-void
.end method


# virtual methods
.method public a(Lajx;)V
    .locals 26
    .param p1, "cityWeather"    # Lajx;

    .prologue
    .line 108
    if-nez p1, :cond_1

    .line 275
    :cond_0
    return-void

    .line 112
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lajx;->j()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->g:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->h:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->k:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->l:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->o:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->n:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->m:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->f:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string/jumbo v22, "#F5FAFF"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->i:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string/jumbo v22, "#D3DCF8"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->b:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->c:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->d:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->p:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->r:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Lajx;->d()Ljava/util/List;

    move-result-object v20

    .line 131
    .local v20, "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lakc;

    .line 132
    .local v8, "forecastToday":Lakc;
    if-eqz v8, :cond_3

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->b:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lakc;->g()Laka;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laka;->a()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lbaa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->c:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lakc;->g()Laka;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laka;->b()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->d:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "\u519c\u5386"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Lakc;->g()Laka;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Laka;->c()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->f:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lakc;->b()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->g:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lakc;->d()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\u00b0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->h:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lakc;->c()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\u00b0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->k:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lakc;->f()Lajz;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lajz;->a()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v8}, Lakc;->e()Lakb;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 142
    invoke-virtual {v8}, Lakc;->e()Lakb;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lakb;->a()Ljava/lang/String;

    move-result-object v15

    .line 145
    .local v15, "pm25Num":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 147
    invoke-virtual {v8, v15}, Lakc;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 149
    .local v14, "pm25Des":Ljava/lang/String;
    invoke-virtual {v8, v15}, Lakc;->d(Ljava/lang/String;)I

    move-result v13

    .line 151
    .local v13, "pm25BgColor":I
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v13, :cond_6

    .line 152
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->l:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    .end local v13    # "pm25BgColor":I
    .end local v14    # "pm25Des":Ljava/lang/String;
    .end local v15    # "pm25Num":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->e:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v8, v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a(Lakc;Landroid/widget/ImageView;Z)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Lajx;->c()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->j:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->j:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->p:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 181
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_0

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->q:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f030073

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 184
    .local v4, "foreItemView":Landroid/view/View;
    const v21, 0x7f0b033f

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 185
    .local v19, "tvForeweek":Landroid/widget/TextView;
    const v21, 0x7f0b0340

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 187
    .local v10, "imgForeWeather":Landroid/widget/ImageView;
    const v21, 0x7f0b0341

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 188
    .local v11, "imgForeWeatherDes":Landroid/widget/TextView;
    const v21, 0x7f0b0342

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 189
    .local v17, "tvForeTempHigh":Landroid/widget/TextView;
    const v21, 0x7f0b0344

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 190
    .local v18, "tvForeTempLow":Landroid/widget/TextView;
    const v21, 0x7f0b0331

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 191
    .local v6, "forecastDiver":Landroid/view/View;
    const v21, 0x7f0b0343

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 192
    .local v16, "tempRangeIco":Landroid/widget/TextView;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lakc;

    .line 195
    .local v5, "forecast":Lakc;
    if-eqz v5, :cond_5

    .line 196
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_a

    .line 197
    const-string/jumbo v21, "\u660e\u5929"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_3
    invoke-virtual {v5}, Lakc;->a()Lajz;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lajz;->a()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lakc;->d()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\u00b0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lakc;->c()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\u00b0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v10, v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a(Lakc;Landroid/widget/ImageView;Z)V

    .line 208
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_4

    .line 209
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :cond_4
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a:Landroid/content/Context;

    move-object/from16 v22, v0

    const-wide/high16 v24, 0x4049000000000000L    # 50.0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 213
    .local v7, "forecastParam":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->p:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .end local v7    # "forecastParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 154
    .end local v4    # "foreItemView":Landroid/view/View;
    .end local v5    # "forecast":Lakc;
    .end local v6    # "forecastDiver":Landroid/view/View;
    .end local v9    # "i":I
    .end local v10    # "imgForeWeather":Landroid/widget/ImageView;
    .end local v11    # "imgForeWeatherDes":Landroid/widget/TextView;
    .end local v16    # "tempRangeIco":Landroid/widget/TextView;
    .end local v17    # "tvForeTempHigh":Landroid/widget/TextView;
    .end local v18    # "tvForeTempLow":Landroid/widget/TextView;
    .end local v19    # "tvForeweek":Landroid/widget/TextView;
    .restart local v13    # "pm25BgColor":I
    .restart local v14    # "pm25Des":Ljava/lang/String;
    .restart local v15    # "pm25Num":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->l:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->l:Landroid/widget/TextView;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "   "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->l:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/GradientDrawable;

    .line 158
    .local v12, "myGrad":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 161
    .end local v12    # "myGrad":Landroid/graphics/drawable/GradientDrawable;
    .end local v13    # "pm25BgColor":I
    .end local v14    # "pm25Des":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->l:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 164
    .end local v15    # "pm25Num":Ljava/lang/String;
    :cond_8
    const-string/jumbo v21, "CityWeatherPagerView"

    const-string/jumbo v22, "refreshView:pm25 = null "

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->l:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 175
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->j:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lajx;->c()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->j:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 199
    .restart local v4    # "foreItemView":Landroid/view/View;
    .restart local v5    # "forecast":Lakc;
    .restart local v6    # "forecastDiver":Landroid/view/View;
    .restart local v9    # "i":I
    .restart local v10    # "imgForeWeather":Landroid/widget/ImageView;
    .restart local v11    # "imgForeWeatherDes":Landroid/widget/TextView;
    .restart local v16    # "tempRangeIco":Landroid/widget/TextView;
    .restart local v17    # "tvForeTempHigh":Landroid/widget/TextView;
    .restart local v18    # "tvForeTempLow":Landroid/widget/TextView;
    .restart local v19    # "tvForeweek":Landroid/widget/TextView;
    :cond_a
    invoke-virtual {v5}, Lakc;->g()Laka;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Laka;->b()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 217
    .end local v4    # "foreItemView":Landroid/view/View;
    .end local v5    # "forecast":Lakc;
    .end local v6    # "forecastDiver":Landroid/view/View;
    .end local v8    # "forecastToday":Lakc;
    .end local v9    # "i":I
    .end local v10    # "imgForeWeather":Landroid/widget/ImageView;
    .end local v11    # "imgForeWeatherDes":Landroid/widget/TextView;
    .end local v16    # "tempRangeIco":Landroid/widget/TextView;
    .end local v17    # "tvForeTempHigh":Landroid/widget/TextView;
    .end local v18    # "tvForeTempLow":Landroid/widget/TextView;
    .end local v19    # "tvForeweek":Landroid/widget/TextView;
    .end local v20    # "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->g:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->h:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->k:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->l:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->o:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->n:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->d:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->p:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->e:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020273

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->f:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string/jumbo v22, "--"

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->f:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string/jumbo v22, "#313955"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->i:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string/jumbo v22, "#6B738C"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Lajx;->b()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 233
    invoke-virtual/range {p1 .. p1}, Lajx;->f()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->j:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->m:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->n:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->b:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->c:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->p:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 249
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v9, v0, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->q:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f030073

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 252
    .restart local v4    # "foreItemView":Landroid/view/View;
    const v21, 0x7f0b033f

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 253
    .restart local v19    # "tvForeweek":Landroid/widget/TextView;
    const v21, 0x7f0b0340

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 254
    .restart local v10    # "imgForeWeather":Landroid/widget/ImageView;
    const v21, 0x7f0b0341

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 255
    .restart local v11    # "imgForeWeatherDes":Landroid/widget/TextView;
    const v21, 0x7f0b0342

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 256
    .restart local v17    # "tvForeTempHigh":Landroid/widget/TextView;
    const v21, 0x7f0b0344

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 257
    .restart local v18    # "tvForeTempLow":Landroid/widget/TextView;
    const v21, 0x7f0b0331

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 258
    .restart local v6    # "forecastDiver":Landroid/view/View;
    const v21, 0x7f0b0343

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 260
    .restart local v16    # "tempRangeIco":Landroid/widget/TextView;
    const/16 v21, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    const/16 v21, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    const/16 v21, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v9, v0, :cond_c

    .line 268
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_c
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->a:Landroid/content/Context;

    move-object/from16 v22, v0

    const-wide/high16 v24, 0x4049000000000000L    # 50.0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 272
    .restart local v7    # "forecastParam":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->p:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 240
    .end local v4    # "foreItemView":Landroid/view/View;
    .end local v6    # "forecastDiver":Landroid/view/View;
    .end local v7    # "forecastParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "i":I
    .end local v10    # "imgForeWeather":Landroid/widget/ImageView;
    .end local v11    # "imgForeWeatherDes":Landroid/widget/TextView;
    .end local v16    # "tempRangeIco":Landroid/widget/TextView;
    .end local v17    # "tvForeTempHigh":Landroid/widget/TextView;
    .end local v18    # "tvForeTempLow":Landroid/widget/TextView;
    .end local v19    # "tvForeweek":Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->m:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->b:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->c:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->b:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-static {}, Lajx;->i()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lbaa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityWeatherPagerView;->c:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lbaa;->g(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public getListOptions()Lbcu;
    .locals 4

    .prologue
    const v3, 0x7f020273

    .line 307
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 309
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 313
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 315
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 316
    invoke-virtual {v1, v3}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v3}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 319
    .local v0, "options":Lbcu;
    return-object v0
.end method
