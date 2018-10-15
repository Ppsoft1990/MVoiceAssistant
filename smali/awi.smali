.class public Lawi;
.super Ljava/lang/Object;
.source "ScheduleWeatherHelper.java"


# direct methods
.method public static a(Lcom/iflytek/viafly/weather/Weather;I)Ljava/lang/String;
    .locals 8
    .param p0, "weather"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "i"    # I

    .prologue
    const/4 v7, 0x1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v2

    .line 80
    .local v2, "forecats":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    const/4 v4, 0x0

    .line 81
    .local v4, "weatherInfo":Lcom/iflytek/viafly/weather/Forecast;
    const-string/jumbo v3, ""

    .line 82
    .local v3, "target_day":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, p1, :cond_2

    .line 83
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "weatherInfo":Lcom/iflytek/viafly/weather/Forecast;
    check-cast v4, Lcom/iflytek/viafly/weather/Forecast;

    .line 85
    .restart local v4    # "weatherInfo":Lcom/iflytek/viafly/weather/Forecast;
    const-string/jumbo v6, "\u7075\u7280\u4e3a\u60a8\u64ad\u62a5\u4eca\u5929\u7684\u5929\u6c14\uff0c"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lcom/iflytek/viafly/weather/Weather;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/iflytek/viafly/weather/Weather;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lbaa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "dateDes":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/weather/Weather;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lbaa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "weekDes":Ljava/lang/String;
    if-ne p1, v7, :cond_0

    .line 97
    invoke-static {v1, v7}, Lbaa;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lbaa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u4eca\u5929\u662f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v6, "[p300]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .end local v1    # "dateDes":Ljava/lang/String;
    .end local v5    # "weekDes":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/weather/Weather;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v6, "\u7684\u5929\u6c14,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v6, "[p300]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v6, "\u6700\u4f4e\u6e29\u5ea6"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getLowTemp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v6, "\u6444\u6c0f\u5ea6"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v6, "[p300]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v6, "\u6700\u9ad8\u6e29\u5ea6"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getHighTemp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v6, "\u6444\u6c0f\u5ea6,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v6, "[p300]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getWind()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    .line 90
    :cond_2
    const-string/jumbo v6, ""

    goto :goto_0
.end method

.method public static a(Lcom/iflytek/viafly/weather/WeatherOneDay;)V
    .locals 2
    .param p0, "weather"    # Lcom/iflytek/viafly/weather/WeatherOneDay;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getImage()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "image":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 28
    const-string/jumbo v1, "\u9635\u96e8\uff1b\u5c0f\u96e8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    const-string/jumbo v1, "image.weather_light_rain_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string/jumbo v1, "\u4e2d\u96e8\uff1b\u5c0f\u96e8-\u4e2d\u96e8"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string/jumbo v1, "image.weather_moderate_rain_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_2
    const-string/jumbo v1, "\u4e2d\u96e8-\u5927\u96e8\uff1b\u5927\u96e8"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    const-string/jumbo v1, "image.weather_great_rain_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_3
    const-string/jumbo v1, "\u5927\u66b4\u96e8-\u7279\u5927\u66b4\u96e8\uff1b\u7279\u5927\u66b4\u96e8\uff1b\u5927\u96e8-\u66b4\u96e8\uff1b\u5927\u66b4\u96e8\uff1b\u66b4\u96e8-\u5927\u66b4\u96e8\uff1b\u66b4\u96e8"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    const-string/jumbo v1, "image.weather_heavy_rain_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_4
    const-string/jumbo v1, "\u51bb\u96e8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 40
    const-string/jumbo v1, "image.weather_ice_rain_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_5
    const-string/jumbo v1, "\u96f7\u9635\u96e8"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    const-string/jumbo v1, "image.weather_thunder_rain_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_6
    const-string/jumbo v1, "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 46
    const-string/jumbo v1, "image.weather_thunder_rain_with_hail_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_7
    const-string/jumbo v1, "\u96e8\u5939\u96ea"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 49
    const-string/jumbo v1, "image.weather_rain_mix_snow_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_8
    const-string/jumbo v1, "\u9635\u96ea\uff1b\u5c0f\u96ea"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 52
    const-string/jumbo v1, "image.weather_light_snow_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_9
    const-string/jumbo v1, "\u4e2d\u96ea\uff1b\u5c0f\u96ea-\u4e2d\u96ea"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 55
    const-string/jumbo v1, "image.weather_moderate_snow_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_a
    const-string/jumbo v1, "\u4e2d\u96ea-\u5927\u96ea\uff1b\u5927\u96ea"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 58
    const-string/jumbo v1, "image.weather_great_snow_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :cond_b
    const-string/jumbo v1, "\u5927\u96ea-\u66b4\u96ea\uff1b\u66b4\u96ea"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 61
    const-string/jumbo v1, "image.weather_heavy_snow_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_c
    const-string/jumbo v1, "\u6674"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 63
    const-string/jumbo v1, "image.weather_sun_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_d
    const-string/jumbo v1, "\u591a\u4e91"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 65
    const-string/jumbo v1, "image.weather_cloudy_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_e
    const-string/jumbo v1, "\u9634"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 67
    const-string/jumbo v1, "image.weather_overcast_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_f
    const-string/jumbo v1, "\u96fe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 69
    const-string/jumbo v1, "image.weather_fog_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    :cond_10
    const-string/jumbo v1, "\u6c99\u5c18\u66b4\uff1b\u6d6e\u5c18\uff1b\u626c\u6c99\uff1b\u6c99\u5c18"

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string/jumbo v1, "image.weather_sand_storm_small"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImgPath(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
