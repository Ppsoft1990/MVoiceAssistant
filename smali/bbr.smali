.class public Lbbr;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "WeatherRecognizeFilter.java"


# instance fields
.field private a:Lcom/iflytek/viafly/weather/Weather;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/weather/Forecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "forecastElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v28, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    if-eqz p1, :cond_e

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_e

    .line 125
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_0
    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_e

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 126
    .local v15, "forecastElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v15, :cond_0

    .line 127
    const-string/jumbo v31, "datetime"

    .line 128
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 129
    .local v13, "dataTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v31, "date"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v13}, Lbbr;->filterAttributeElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 131
    .local v12, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "condition"

    .line 132
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 133
    .local v9, "conditionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lbbr;->d(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v8

    .line 135
    .local v8, "condition":Landroid/os/Bundle;
    const-string/jumbo v31, "temp"

    .line 136
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 137
    .local v26, "tempElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v27

    .line 139
    .local v27, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "humidity"

    .line 140
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 141
    .local v18, "humidityElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 143
    .local v19, "humidityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "wind"

    .line 144
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    .line 145
    .local v29, "windElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v30

    .line 147
    .local v30, "windList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "low"

    .line 148
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 149
    .local v20, "lowElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    .line 151
    .local v21, "lowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "high"

    .line 152
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 153
    .local v16, "highElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    .line 155
    .local v17, "highList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "pm25"

    .line 156
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    .line 157
    .local v22, "pm25Elements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v23

    .line 160
    .local v23, "pm25List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "aqi"

    .line 161
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, "aqiElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 164
    .local v3, "aqiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "suggestion"

    .line 165
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v24

    .line 166
    .local v24, "suggestionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v25

    .line 168
    .local v25, "suggestionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "cool_remind"

    .line 169
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 170
    .local v10, "coolElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 173
    .local v11, "coolList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "bad_weather_remind"

    .line 174
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 175
    .local v6, "badWeatherElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 178
    .local v7, "badWeatherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v31, "aqi_remind"

    .line 179
    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 180
    .local v4, "aqiRemindElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 182
    .local v5, "aqiRemindList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Lcom/iflytek/viafly/weather/Forecast;

    invoke-direct {v14}, Lcom/iflytek/viafly/weather/Forecast;-><init>()V

    .line 183
    .local v14, "forecast":Lcom/iflytek/viafly/weather/Forecast;
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_1

    .line 184
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setDate(Ljava/lang/String;)V

    .line 186
    :cond_1
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_2

    .line 187
    const/16 v31, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setHighTemp(Ljava/lang/String;)V

    .line 189
    :cond_2
    if-eqz v21, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_3

    .line 190
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setLowTemp(Ljava/lang/String;)V

    .line 192
    :cond_3
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_4

    .line 193
    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setHumidity(Ljava/lang/String;)V

    .line 195
    :cond_4
    if-eqz v27, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_5

    .line 196
    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setTemperature(Ljava/lang/String;)V

    .line 198
    :cond_5
    if-eqz v30, :cond_6

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_6

    .line 199
    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setWind(Ljava/lang/String;)V

    .line 201
    :cond_6
    if-eqz v8, :cond_7

    .line 202
    const-string/jumbo v31, "description"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setDescription(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v31, "bg_image"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setBgImage(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v31, "image"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setImage(Ljava/lang/String;)V

    .line 206
    :cond_7
    if-eqz v23, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_8

    .line 207
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setPM25(Ljava/lang/String;)V

    .line 210
    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_9

    .line 211
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setAqi(Ljava/lang/String;)V

    .line 213
    :cond_9
    if-eqz v25, :cond_a

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_a

    .line 214
    const/16 v31, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setSuggestion(Ljava/lang/String;)V

    .line 216
    :cond_a
    if-eqz v11, :cond_b

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_b

    .line 217
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setCoolingRemind(Ljava/lang/String;)V

    .line 220
    :cond_b
    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_c

    .line 221
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setBadWeatheRemind(Ljava/lang/String;)V

    .line 224
    :cond_c
    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_d

    .line 225
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/Forecast;->setAqiRemind(Ljava/lang/String;)V

    .line 227
    :cond_d
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 231
    .end local v2    # "aqiElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "aqiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "aqiRemindElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "aqiRemindList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "badWeatherElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v7    # "badWeatherList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "condition":Landroid/os/Bundle;
    .end local v9    # "conditionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "coolElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v11    # "coolList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "dataTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v14    # "forecast":Lcom/iflytek/viafly/weather/Forecast;
    .end local v15    # "forecastElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v16    # "highElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v17    # "highList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "humidityElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v19    # "humidityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "lowElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v21    # "lowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "pm25Elements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v23    # "pm25List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "suggestionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v25    # "suggestionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "tempElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v27    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "windElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v30    # "windList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    return-object v28
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "lastUpdateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/4 v8, 0x0

    .line 240
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v5, "tmpArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 243
    .local v3, "lastUpdateElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v6, "datetime"

    .line 244
    invoke-virtual {v3, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 245
    .local v2, "dateTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v6, "date"

    invoke-virtual {p0, v6, v2}, Lbbr;->filterAttributeElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, "dateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "time"

    invoke-virtual {p0, v6, v2}, Lbbr;->filterAttributeElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 247
    .local v4, "timeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v1, "dateTime":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 249
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 252
    const-string/jumbo v6, "  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    .end local v0    # "dateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "dateTime":Ljava/lang/StringBuilder;
    .end local v2    # "dateTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "lastUpdateElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v4    # "timeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v5
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "interestUpdateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v4, "tmpArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 266
    .local v3, "interestUpdateElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v5, "datetime"

    .line 267
    invoke-virtual {v3, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 268
    .local v2, "dateTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v5, "date"

    invoke-virtual {p0, v5, v2}, Lbbr;->filterAttributeElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, "dateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v1, "dateTime":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 271
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    .end local v0    # "dateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "dateTime":Ljava/lang/StringBuilder;
    .end local v2    # "dateTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "interestUpdateElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_1
    return-object v4
.end method

.method private d(Ljava/util/List;)Landroid/os/Bundle;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p1, "conditionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/4 v10, 0x0

    .line 286
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v5, "descriptionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v7, "imageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v1, "bgImageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v2, "condition":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 292
    .local v3, "conditionElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v9, "description"

    .line 293
    invoke-virtual {v3, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 294
    .local v4, "descriptionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v4}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 295
    const-string/jumbo v9, "image"

    invoke-virtual {v3, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 296
    .local v6, "imageElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v6}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 297
    const-string/jumbo v9, "bg_image"

    invoke-virtual {v3, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 298
    .local v0, "bgImageElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v0}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 299
    goto :goto_0

    .line 301
    .end local v0    # "bgImageElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "conditionElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v4    # "descriptionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v6    # "imageElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 302
    const-string/jumbo v9, "description"

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 305
    const-string/jumbo v9, "image"

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 308
    const-string/jumbo v9, "bg_image"

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_3
    return-object v2
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/weather/CityLocationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "cityLocationElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/4 v13, 0x0

    .line 318
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v10, "tmpArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/CityLocationInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v9, "provinceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v3, "cityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, "areaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v7, "landmarkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 325
    .local v4, "cityLocationElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v12, "province"

    .line 326
    invoke-virtual {v4, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 327
    .local v8, "provinceElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v8}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 329
    const-string/jumbo v12, "city"

    .line 330
    invoke-virtual {v4, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 331
    .local v2, "cityElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v2}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 333
    const-string/jumbo v12, "area"

    .line 334
    invoke-virtual {v4, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 335
    .local v0, "areaElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v0}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 337
    const-string/jumbo v12, "landmark"

    .line 338
    invoke-virtual {v4, v12}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 339
    .local v6, "landmarkElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v6}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 340
    goto :goto_0

    .line 343
    .end local v0    # "areaElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v2    # "cityElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "cityLocationElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v6    # "landmarkElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v8    # "provinceElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    new-instance v5, Lcom/iflytek/viafly/weather/CityLocationInfo;

    invoke-direct {v5}, Lcom/iflytek/viafly/weather/CityLocationInfo;-><init>()V

    .line 344
    .local v5, "cityLocationInfo":Lcom/iflytek/viafly/weather/CityLocationInfo;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 345
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11}, Lcom/iflytek/viafly/weather/CityLocationInfo;->setProvince(Ljava/lang/String;)V

    .line 347
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 348
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11}, Lcom/iflytek/viafly/weather/CityLocationInfo;->setCity(Ljava/lang/String;)V

    .line 350
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 351
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11}, Lcom/iflytek/viafly/weather/CityLocationInfo;->setArea(Ljava/lang/String;)V

    .line 353
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 354
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11}, Lcom/iflytek/viafly/weather/CityLocationInfo;->setLandmark(Ljava/lang/String;)V

    .line 356
    :cond_4
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-object v10
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 28
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 31
    :cond_0
    const-string/jumbo v26, "RecognizeFilter"

    const-string/jumbo v27, "recognize result is null"

    invoke-static/range {v26 .. v27}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/16 v26, 0x0

    .line 114
    :goto_0
    return-object v26

    .line 35
    :cond_1
    new-instance v26, Lcom/iflytek/viafly/weather/Weather;

    invoke-direct/range {v26 .. v26}, Lcom/iflytek/viafly/weather/Weather;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    .line 37
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lbbr;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 39
    invoke-virtual/range {p0 .. p1}, Lbbr;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v25

    .line 40
    .local v25, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual/range {v25 .. v25}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v22

    .line 41
    .local v22, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lbbr;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v21

    .line 42
    .local v21, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lbbr;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 45
    .local v20, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v21, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_4

    .line 46
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v27, "expires"

    invoke-virtual/range {v26 .. v27}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 47
    .local v10, "expiresElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 48
    .local v11, "expiresList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_2

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v27, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->setExpires(Ljava/lang/String;)V

    .line 52
    :cond_2
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v27, "rand_timespan"

    invoke-virtual/range {v26 .. v27}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 53
    .local v23, "timeSpanElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v24

    .line 54
    .local v24, "timeSpanList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_3

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v27, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->setTimeSpan(Ljava/lang/String;)V

    .line 58
    :cond_3
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v27, "detail_url"

    invoke-virtual/range {v26 .. v27}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 59
    .local v7, "detailElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 60
    .local v8, "detailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_4

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v27, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->setDetailUrl(Ljava/lang/String;)V

    .line 65
    .end local v7    # "detailElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v8    # "detailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "expiresElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v11    # "expiresList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "timeSpanElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v24    # "timeSpanList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v4, "cityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v6, "cityLocationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/CityLocationInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v17, "lastUpdateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v12, "forcastList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v15, "interestUpdateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v18, "loc_judgements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_5

    .line 73
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 74
    .local v19, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v27, "city"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 75
    .local v3, "cityElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lbbr;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 77
    const-string/jumbo v27, "location"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 78
    .local v5, "cityLocationElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lbbr;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 80
    const-string/jumbo v27, "last_update"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 81
    .local v16, "lastUpdateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v27, "interest_datetime"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 82
    .local v14, "interestElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lbbr;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    .line 83
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lbbr;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 84
    const-string/jumbo v27, "forecast"

    .line 85
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 86
    .local v13, "forecastElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lbbr;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 87
    const-string/jumbo v27, "loc_judgement"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 88
    goto :goto_1

    .line 90
    .end local v3    # "cityElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v5    # "cityLocationElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v13    # "forecastElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v14    # "interestElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v16    # "lastUpdateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v19    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_6

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v27, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->setCity(Ljava/lang/String;)V

    .line 93
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_7

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v27, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/iflytek/viafly/weather/CityLocationInfo;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->setmCityLocationInfo(Lcom/iflytek/viafly/weather/CityLocationInfo;)V

    .line 96
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_8

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v27, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->setLastUpdate(Ljava/lang/String;)V

    .line 99
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/iflytek/viafly/weather/Weather;->setForcasts(Ljava/util/List;)V

    .line 100
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_9

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/iflytek/viafly/weather/Weather;->setInterestDateTime(Ljava/util/List;)V

    .line 103
    :cond_9
    if-eqz v18, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_a

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v27, v0

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual/range {v26 .. v26}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->setmLocJudgement(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v27, "infer"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual/range {v26 .. v26}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/iflytek/viafly/weather/Weather;->setmIsClientPos(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v4    # "cityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "cityLocationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/CityLocationInfo;>;"
    .end local v12    # "forcastList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    .end local v15    # "interestUpdateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "lastUpdateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "loc_judgements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v20    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v21    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v22    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v26, v0

    goto/16 :goto_0

    .line 108
    .restart local v4    # "cityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "cityLocationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/CityLocationInfo;>;"
    .restart local v12    # "forcastList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    .restart local v15    # "interestUpdateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "lastUpdateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "loc_judgements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v20    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v21    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v22    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lbbr;->a:Lcom/iflytek/viafly/weather/Weather;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/iflytek/viafly/weather/Weather;->setmIsClientPos(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 110
    .end local v4    # "cityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "cityLocationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/CityLocationInfo;>;"
    .end local v12    # "forcastList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    .end local v15    # "interestUpdateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "lastUpdateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "loc_judgements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v20    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v21    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v22    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v25    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :catch_0
    move-exception v9

    .line 111
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "RecognizeFilter"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
