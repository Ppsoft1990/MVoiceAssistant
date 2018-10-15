.class public Laxc;
.super Lavi;
.source "WeatherScheduleTriggerHandler.java"

# interfaces
.implements Lwd;


# static fields
.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            "Lcom/iflytek/viafly/weather/WeatherOneDay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lbbq;

.field private c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private d:Z

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laxc;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lave;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "base"    # Lave;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lavi;-><init>(Landroid/content/Context;Lave;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxc;->d:Z

    .line 52
    new-instance v0, Lbbq;

    invoke-direct {v0, p1, p0}, Lbbq;-><init>(Landroid/content/Context;Lwd;)V

    iput-object v0, p0, Laxc;->b:Lbbq;

    .line 53
    iput-object p1, p0, Laxc;->e:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            "Lcom/iflytek/viafly/weather/WeatherOneDay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    sget-object v0, Laxc;->f:Ljava/util/Map;

    return-object v0
.end method

.method private c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 1
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 79
    invoke-direct {p0}, Laxc;->e()V

    .line 80
    invoke-super {p0, p1}, Lavi;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxc;->d:Z

    .line 82
    return-void
.end method

.method private d()V
    .locals 22

    .prologue
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 129
    .local v2, "currentTime":J
    invoke-static {}, Lil;->a()Lil;

    move-result-object v17

    const-string/jumbo v18, "com.iflytek.cmccSCHEDULE_WEATHER_UPDATE_TIME"

    invoke-virtual/range {v17 .. v18}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v6

    .line 131
    .local v6, "lastestWeatherUpdateTime":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Laxc;->e:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "serializePath":Ljava/lang/String;
    cmp-long v17, v6, v2

    if-lez v17, :cond_0

    .line 134
    const-wide/16 v6, 0x0

    .line 135
    invoke-static {}, Lil;->a()Lil;

    move-result-object v17

    const-string/jumbo v18, "com.iflytek.cmccSCHEDULE_WEATHER_UPDATE_TIME"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lil;->a(Ljava/lang/String;I)V

    .line 137
    invoke-static {}, Lil;->a()Lil;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "SCHEDULE_WEATHER_SAVED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lil;->i(Ljava/lang/String;)V

    .line 140
    :cond_0
    cmp-long v17, v2, v6

    if-lez v17, :cond_5

    sub-long v18, v2, v6

    const-wide/32 v20, 0x36ee800

    cmp-long v17, v18, v20

    if-gez v17, :cond_5

    .line 143
    invoke-static {}, Lil;->a()Lil;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "SCHEDULE_WEATHER_SAVED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lil;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/weather/Weather;

    .line 145
    .local v9, "scheduleWeatherCache":Lcom/iflytek/viafly/weather/Weather;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v16, "weatherOneDays":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/WeatherOneDay;>;"
    if-eqz v9, :cond_2

    .line 147
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_2

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v5, v0, :cond_2

    .line 148
    new-instance v14, Lcom/iflytek/viafly/weather/WeatherOneDay;

    invoke-direct {v14}, Lcom/iflytek/viafly/weather/WeatherOneDay;-><init>()V

    .line 149
    .local v14, "weatherOne":Lcom/iflytek/viafly/weather/WeatherOneDay;
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getErrorCode()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setErrorCode(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getCity()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setCity(Ljava/lang/String;)V

    .line 152
    invoke-static {v9, v5}, Lawi;->a(Lcom/iflytek/viafly/weather/Weather;I)Ljava/lang/String;

    move-result-object v17

    .line 151
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setSpeechText(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 154
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v5, :cond_1

    .line 155
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/weather/Forecast;

    .line 156
    .local v4, "forecast":Lcom/iflytek/viafly/weather/Forecast;
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setmDate(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getDescription()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setDescription(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getImage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImage(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getBgImage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setBgImage(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getHighTemp()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setHighTemp(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getLowTemp()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setLowTemp(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getWind()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setWind(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v4}, Lcom/iflytek/viafly/weather/Forecast;->getPM25()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setPm25(Ljava/lang/String;)V

    .line 164
    invoke-static {v14}, Lawi;->a(Lcom/iflytek/viafly/weather/WeatherOneDay;)V

    .line 166
    .end local v4    # "forecast":Lcom/iflytek/viafly/weather/Forecast;
    :cond_1
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 169
    .end local v5    # "i":I
    .end local v14    # "weatherOne":Lcom/iflytek/viafly/weather/WeatherOneDay;
    :cond_2
    const/4 v15, 0x0

    .line 170
    .local v15, "weatherOneDay":Lcom/iflytek/viafly/weather/WeatherOneDay;
    invoke-static/range {v16 .. v16}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 171
    new-instance v8, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Laxc;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 172
    .local v8, "scheduleTriggerDate":Ljava/util/Date;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/viafly/weather/WeatherOneDay;

    .line 173
    .local v13, "tmpWeatherOneDay":Lcom/iflytek/viafly/weather/WeatherOneDay;
    invoke-virtual {v13}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getmDate()Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, "tmpDateStr":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 175
    new-instance v11, Ljava/util/Date;

    const/16 v18, 0x0

    .line 176
    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lbaa;->c(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 178
    .local v11, "tmpDate":Ljava/util/Date;
    invoke-static {v8, v11}, Lbaa;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v18

    if-nez v18, :cond_3

    .line 180
    move-object v15, v13

    .line 186
    .end local v8    # "scheduleTriggerDate":Ljava/util/Date;
    .end local v11    # "tmpDate":Ljava/util/Date;
    .end local v12    # "tmpDateStr":Ljava/lang/String;
    .end local v13    # "tmpWeatherOneDay":Lcom/iflytek/viafly/weather/WeatherOneDay;
    :cond_4
    if-eqz v15, :cond_5

    .line 187
    sget-object v17, Laxc;->f:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v0, v0, Laxc;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v9    # "scheduleWeatherCache":Lcom/iflytek/viafly/weather/Weather;
    .end local v15    # "weatherOneDay":Lcom/iflytek/viafly/weather/WeatherOneDay;
    .end local v16    # "weatherOneDays":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/WeatherOneDay;>;"
    :cond_5
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Laxc;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v0, :cond_0

    sget-object v0, Laxc;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Laxc;->f:Ljava/util/Map;

    iget-object v1, p0, Laxc;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 202
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Laxc;->f:Ljava/util/Map;

    iget-object v1, p0, Laxc;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 203
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/weather/WeatherOneDay;

    invoke-virtual {v0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getSpeechText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Laxc;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Z)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Laxc;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(IJI)V
    .locals 1
    .param p1, "requestType"    # I
    .param p2, "requestId"    # J
    .param p4, "errorCode"    # I

    .prologue
    .line 196
    invoke-direct {p0}, Laxc;->d()V

    .line 197
    iget-object v0, p0, Laxc;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v0}, Laxc;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 198
    return-void
.end method

.method public a(Lwa;)V
    .locals 12
    .param p1, "result"    # Lwa;

    .prologue
    const/4 v2, 0x0

    .line 87
    move-object v7, p1

    .line 88
    .local v7, "bres":Lwa;
    invoke-virtual {v7}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "resultStr":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 90
    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    const-string/jumbo v4, "weather"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v8, Lbbr;

    invoke-direct {v8}, Lbbr;-><init>()V

    .line 94
    .local v8, "filter":Lbbr;
    invoke-virtual {v8, v0}, Lbbr;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v10

    check-cast v10, Lcom/iflytek/viafly/weather/Weather;

    .line 96
    .local v10, "weather":Lcom/iflytek/viafly/weather/Weather;
    const-string/jumbo v1, "000000"

    invoke-virtual {v10}, Lcom/iflytek/viafly/weather/Weather;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    new-instance v11, Lcom/iflytek/viafly/weather/WeatherOneDay;

    invoke-direct {v11}, Lcom/iflytek/viafly/weather/WeatherOneDay;-><init>()V

    .line 98
    .local v11, "weatherOne":Lcom/iflytek/viafly/weather/WeatherOneDay;
    invoke-virtual {v10}, Lcom/iflytek/viafly/weather/Weather;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setErrorCode(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v10}, Lcom/iflytek/viafly/weather/Weather;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setCity(Ljava/lang/String;)V

    .line 100
    invoke-static {v10, v2}, Lawi;->a(Lcom/iflytek/viafly/weather/Weather;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setSpeechText(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v10}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v10}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    invoke-virtual {v10}, Lcom/iflytek/viafly/weather/Weather;->getForcasts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/weather/Forecast;

    .line 105
    .local v9, "forecast":Lcom/iflytek/viafly/weather/Forecast;
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Forecast;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setmDate(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Forecast;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setDescription(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Forecast;->getBgImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setBgImage(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Forecast;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setImage(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Forecast;->getHighTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setHighTemp(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Forecast;->getLowTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setLowTemp(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Forecast;->getWind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setWind(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v9}, Lcom/iflytek/viafly/weather/Forecast;->getPM25()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->setPm25(Ljava/lang/String;)V

    .line 113
    invoke-static {v11}, Lawi;->a(Lcom/iflytek/viafly/weather/WeatherOneDay;)V

    .line 115
    .end local v9    # "forecast":Lcom/iflytek/viafly/weather/Forecast;
    :cond_0
    sget-object v1, Laxc;->f:Ljava/util/Map;

    iget-object v2, p0, Laxc;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v11    # "weatherOne":Lcom/iflytek/viafly/weather/WeatherOneDay;
    :goto_0
    iget-object v1, p0, Laxc;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v1}, Laxc;->c(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 120
    return-void

    .line 117
    :cond_1
    invoke-direct {p0}, Laxc;->d()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Laxc;->d:Z

    return v0
.end method

.method public b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 3
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v2, 0x0

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxc;->d:Z

    .line 59
    iput-object p1, p0, Laxc;->c:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 60
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    invoke-super {p0, p1}, Lavi;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Laxc;->b:Lbbq;

    invoke-static {}, Loa;->a()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1}, Lbbq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;)J

    goto :goto_0
.end method
