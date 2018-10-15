.class public Lagd;
.super Ljava/lang/Object;
.source "WeatherMessageItemDelegate.java"

# interfaces
.implements Ladv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private a(Lagc;)V
    .locals 26
    .param p1, "weatherMessage"    # Lagc;

    .prologue
    .line 124
    move-object/from16 v0, p1

    iget-object v0, v0, Lagc;->f:Ljava/util/List;

    move-object/from16 v18, v0

    .line 125
    .local v18, "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 181
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lagd;->b:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f030073

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 130
    .local v5, "foreItemView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lagd;->a:Landroid/content/Context;

    move-object/from16 v20, v0

    const-wide/high16 v22, 0x402e000000000000L    # 15.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lagd;->a:Landroid/content/Context;

    move-object/from16 v22, v0

    const-wide/high16 v24, 0x402e000000000000L    # 15.0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    const v20, 0x7f0b033f

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 133
    .local v17, "tvForeweek":Landroid/widget/TextView;
    const v20, 0x7f0b0340

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 135
    .local v11, "imgForeWeather":Landroid/widget/ImageView;
    const v20, 0x7f0b0341

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 136
    .local v12, "imgForeWeatherDes":Landroid/widget/TextView;
    const v20, 0x7f0b0342

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 137
    .local v15, "tvForeTempHigh":Landroid/widget/TextView;
    const v20, 0x7f0b0344

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 138
    .local v16, "tvForeTempLow":Landroid/widget/TextView;
    const v20, 0x7f0b0331

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 139
    .local v8, "forecastDiver":Landroid/view/View;
    const v20, 0x7f0b0343

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 140
    .local v14, "tempRangeIco":Landroid/widget/TextView;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/weather/Forecast;

    .line 143
    .local v6, "forecast":Lcom/iflytek/viafly/weather/Forecast;
    if-eqz v6, :cond_3

    .line 144
    move-object/from16 v0, p1

    iget-object v13, v0, Lagc;->e:Ljava/lang/String;

    .line 145
    .local v13, "interestDate":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "forecastDate":Ljava/lang/String;
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lagd;->n:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lbaa;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "dateName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 149
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_1
    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    const/16 v20, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    const v20, 0x7f020435

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    .end local v4    # "dateName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6}, Lcom/iflytek/viafly/weather/Forecast;->getDescription()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/iflytek/viafly/weather/Forecast;->getHighTemp()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\u00b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/iflytek/viafly/weather/Forecast;->getLowTemp()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\u00b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v6, v11, v1}, Lagd;->a(Lcom/iflytek/viafly/weather/Forecast;Landroid/widget/ImageView;Z)V

    .line 173
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_2

    .line 174
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_2
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lagd;->a:Landroid/content/Context;

    move-object/from16 v21, v0

    const-wide/high16 v22, 0x4049000000000000L    # 50.0

    invoke-static/range {v21 .. v23}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v9, "forecastParam":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lagd;->m:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .end local v7    # "forecastDate":Ljava/lang/String;
    .end local v9    # "forecastParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "interestDate":Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 151
    .restart local v4    # "dateName":Ljava/lang/String;
    .restart local v7    # "forecastDate":Ljava/lang/String;
    .restart local v13    # "interestDate":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lbaa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 152
    .local v19, "weekStr":Ljava/lang/String;
    const-string/jumbo v20, "\u661f\u671f"

    const-string/jumbo v21, "\u5468"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 163
    .end local v4    # "dateName":Ljava/lang/String;
    .end local v19    # "weekStr":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lbaa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 164
    .restart local v19    # "weekStr":Ljava/lang/String;
    const-string/jumbo v20, "\u661f\u671f"

    const-string/jumbo v21, "\u5468"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private a(Lcom/iflytek/viafly/weather/Forecast;Landroid/widget/ImageView;Z)V
    .locals 4
    .param p1, "data"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "isRealTime"    # Z

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/Forecast;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lajo;->a(Ljava/lang/String;Z)I

    move-result v0

    .line 256
    .local v0, "imageResId":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 257
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/weather/Forecast;->getImage()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {p0}, Lagd;->b()Lbcu;

    move-result-object v3

    .line 257
    invoke-virtual {v1, v2, p2, v3}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 263
    :goto_1
    return-void

    .line 255
    .end local v0    # "imageResId":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    .restart local v0    # "imageResId":I
    :cond_1
    iget-object v1, p0, Lagd;->a:Landroid/content/Context;

    .line 261
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/weather/Forecast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    const/16 v12, 0x8

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 184
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 186
    iget-object v7, p0, Lagd;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v7, p0, Lagd;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/weather/Forecast;

    .line 190
    .local v0, "forecastToday":Lcom/iflytek/viafly/weather/Forecast;
    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lagd;->n:Ljava/lang/String;

    .line 193
    const-string/jumbo v7, "WeatherMessageItemDelegate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "refreshView:tempnow "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/iflytek/viafly/weather/Forecast;->getTemperature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v0}, Lcom/iflytek/viafly/weather/Forecast;->getTemperature()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 195
    iget-object v7, p0, Lagd;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-object v7, p0, Lagd;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/weather/Forecast;->getTemperature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_0
    iget-object v7, p0, Lagd;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/weather/Forecast;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v7, p0, Lagd;->h:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iflytek/viafly/weather/Forecast;->getHighTemp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u00b0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v7, p0, Lagd;->g:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iflytek/viafly/weather/Forecast;->getLowTemp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u00b0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const-string/jumbo v5, ""

    .line 207
    .local v5, "pm25Num":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/iflytek/viafly/weather/Forecast;->getPM25()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "pm25Info":Ljava/lang/String;
    const-string/jumbo v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "pm25s":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 210
    aget-object v5, v6, v10

    .line 211
    const-string/jumbo v7, "WeatherMessageItemDelegate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initTodayWeather: pm25Num "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 217
    invoke-static {v5}, Lajo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "pm25Des":Ljava/lang/String;
    invoke-static {v5}, Lajo;->d(Ljava/lang/String;)I

    move-result v2

    .line 221
    .local v2, "pm25BgColor":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, -0x1

    if-ne v7, v2, :cond_4

    .line 222
    :cond_1
    iget-object v7, p0, Lagd;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    .end local v2    # "pm25BgColor":I
    .end local v3    # "pm25Des":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lagd;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v7, v10}, Lagd;->a(Lcom/iflytek/viafly/weather/Forecast;Landroid/widget/ImageView;Z)V

    .line 238
    .end local v0    # "forecastToday":Lcom/iflytek/viafly/weather/Forecast;
    .end local v4    # "pm25Info":Ljava/lang/String;
    .end local v5    # "pm25Num":Ljava/lang/String;
    .end local v6    # "pm25s":[Ljava/lang/String;
    :cond_2
    return-void

    .line 198
    .restart local v0    # "forecastToday":Lcom/iflytek/viafly/weather/Forecast;
    :cond_3
    iget-object v7, p0, Lagd;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 224
    .restart local v2    # "pm25BgColor":I
    .restart local v3    # "pm25Des":Ljava/lang/String;
    .restart local v4    # "pm25Info":Ljava/lang/String;
    .restart local v5    # "pm25Num":Ljava/lang/String;
    .restart local v6    # "pm25s":[Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lagd;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v7, p0, Lagd;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v7, p0, Lagd;->f:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 228
    .local v1, "myGrad":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 231
    .end local v1    # "myGrad":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "pm25BgColor":I
    .end local v3    # "pm25Des":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "WeatherMessageItemDelegate"

    const-string/jumbo v8, "refreshView:pm25 = null "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v7, p0, Lagd;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f03006e

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 5
    .param p1, "viewHolder"    # Lady;
    .param p2, "chatMessage"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 83
    instance-of v3, p2, Lagc;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 84
    check-cast v2, Lagc;

    .line 85
    .local v2, "weatherMessage":Lagc;
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "layout":Landroid/view/View;
    invoke-virtual {p1}, Lady;->a()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lagd;->a:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Lady;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lagd;->b:Landroid/view/LayoutInflater;

    .line 89
    const v3, 0x7f0b034e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lagd;->c:Landroid/widget/ImageView;

    .line 90
    const v3, 0x7f0b0347

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lagd;->d:Landroid/widget/TextView;

    .line 91
    const v3, 0x7f0b0424

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lagd;->e:Landroid/widget/TextView;

    .line 92
    const v3, 0x7f0b0354

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lagd;->f:Landroid/widget/TextView;

    .line 93
    const v3, 0x7f0b034a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lagd;->g:Landroid/widget/TextView;

    .line 94
    const v3, 0x7f0b034c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lagd;->h:Landroid/widget/TextView;

    .line 95
    const v3, 0x7f0b0429

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lagd;->i:Landroid/widget/TextView;

    .line 96
    const v3, 0x7f0b0428

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lagd;->p:Landroid/widget/ImageView;

    .line 97
    const v3, 0x7f0b0348

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lagd;->o:Landroid/widget/RelativeLayout;

    .line 98
    const v3, 0x7f0b0427

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lagd;->l:Landroid/widget/LinearLayout;

    .line 100
    const v3, 0x7f0b0421

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lagd;->j:Landroid/widget/LinearLayout;

    .line 101
    const v3, 0x7f0b0426

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lagd;->k:Landroid/widget/LinearLayout;

    .line 103
    iget-object v3, v2, Lagc;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    iget-object v3, p0, Lagd;->i:Landroid/widget/TextView;

    iget-object v4, v2, Lagc;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, p0, Lagd;->p:Landroid/widget/ImageView;

    const v4, 0x7f020260

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v3, p0, Lagd;->l:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 113
    :goto_0
    iget-object v1, v2, Lagc;->f:Ljava/util/List;

    .line 114
    .local v1, "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    invoke-direct {p0, v1}, Lagd;->a(Ljava/util/List;)V

    .line 117
    const v3, 0x7f0b0332

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lagd;->m:Landroid/widget/LinearLayout;

    .line 118
    iget-object v3, p0, Lagd;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 119
    invoke-direct {p0, v2}, Lagd;->a(Lagc;)V

    .line 121
    .end local v0    # "layout":Landroid/view/View;
    .end local v1    # "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    .end local v2    # "weatherMessage":Lagc;
    :cond_0
    return-void

    .line 109
    .restart local v0    # "layout":Landroid/view/View;
    .restart local v2    # "weatherMessage":Lagc;
    :cond_1
    iget-object v3, p0, Lagd;->l:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 36
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Lagd;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 243
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 78
    instance-of v0, p1, Lagc;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 36
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Lagd;->a(Laee;)Z

    move-result v0

    return v0
.end method

.method public b()Lbcu;
    .locals 4

    .prologue
    const v3, 0x7f020273

    .line 266
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 268
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 272
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 274
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 275
    invoke-virtual {v1, v3}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 276
    invoke-virtual {v1, v3}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 278
    .local v0, "options":Lbcu;
    return-object v0
.end method
