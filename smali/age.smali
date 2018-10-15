.class public Lage;
.super Lcom/iflytek/yd/speech/RecognizeFilter;
.source "WeatherResultFilter.java"


# instance fields
.field private a:Lagb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/iflytek/yd/speech/RecognizeFilter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lage;->a:Lagb;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 21
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
    .line 83
    .local p1, "forecastElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v19, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    if-eqz p1, :cond_9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_9

    .line 85
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_9

    .line 86
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 87
    .local v9, "forecastElement":Lcom/iflytek/yd/util/xml/XmlElement;
    if-eqz v9, :cond_6

    .line 88
    const-string/jumbo v20, "datetime"

    .line 89
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 90
    .local v7, "dataTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v20, "date"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lage;->filterAttributeElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 92
    .local v6, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 93
    .local v4, "currentCondition":Lajz;
    const/4 v2, 0x0

    .line 94
    .local v2, "condition":Lajz;
    if-nez v12, :cond_7

    .line 95
    const-string/jumbo v20, "currentCondition"

    .line 96
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 97
    .local v5, "currentConditionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lage;->c(Ljava/util/List;)Lajz;

    move-result-object v4

    .line 104
    .end local v5    # "currentConditionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_1
    const-string/jumbo v20, "temp"

    .line 105
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 106
    .local v17, "tempElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lage;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    .line 108
    .local v18, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v20, "low"

    .line 109
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 110
    .local v13, "lowElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lage;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 112
    .local v14, "lowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v20, "high"

    .line 113
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 114
    .local v10, "highElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lage;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 116
    .local v11, "highList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v20, "pm25"

    .line 117
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 118
    .local v15, "pm25Elements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lage;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 120
    .local v16, "pm25List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Lcom/iflytek/viafly/weather/Forecast;

    invoke-direct {v8}, Lcom/iflytek/viafly/weather/Forecast;-><init>()V

    .line 121
    .local v8, "forecast":Lcom/iflytek/viafly/weather/Forecast;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 122
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/weather/Forecast;->setDate(Ljava/lang/String;)V

    .line 124
    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_1

    .line 125
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/weather/Forecast;->setHighTemp(Ljava/lang/String;)V

    .line 127
    :cond_1
    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 128
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/weather/Forecast;->setLowTemp(Ljava/lang/String;)V

    .line 130
    :cond_2
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 131
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/weather/Forecast;->setTemperature(Ljava/lang/String;)V

    .line 133
    :cond_3
    if-nez v12, :cond_8

    if-eqz v4, :cond_8

    .line 134
    if-eqz v4, :cond_4

    .line 135
    invoke-virtual {v4}, Lajz;->a()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/weather/Forecast;->setDescription(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v4}, Lajz;->b()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/weather/Forecast;->setImage(Ljava/lang/String;)V

    .line 145
    :cond_4
    :goto_2
    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_5

    .line 146
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/weather/Forecast;->setPM25(Ljava/lang/String;)V

    .line 148
    :cond_5
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "condition":Lajz;
    .end local v4    # "currentCondition":Lajz;
    .end local v6    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "dataTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v8    # "forecast":Lcom/iflytek/viafly/weather/Forecast;
    .end local v10    # "highElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v11    # "highList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "lowElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v14    # "lowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "pm25Elements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v16    # "pm25List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "tempElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v18    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 99
    .restart local v2    # "condition":Lajz;
    .restart local v4    # "currentCondition":Lajz;
    .restart local v6    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "dataTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_7
    const-string/jumbo v20, "condition"

    .line 100
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 101
    .local v3, "conditionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lage;->c(Ljava/util/List;)Lajz;

    move-result-object v2

    goto/16 :goto_1

    .line 139
    .end local v3    # "conditionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v8    # "forecast":Lcom/iflytek/viafly/weather/Forecast;
    .restart local v10    # "highElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v11    # "highList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "lowElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v14    # "lowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "pm25Elements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v16    # "pm25List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "tempElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .restart local v18    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    if-eqz v2, :cond_4

    .line 140
    invoke-virtual {v2}, Lajz;->a()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/weather/Forecast;->setDescription(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2}, Lajz;->b()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/weather/Forecast;->setImage(Ljava/lang/String;)V

    goto :goto_2

    .line 152
    .end local v2    # "condition":Lajz;
    .end local v4    # "currentCondition":Lajz;
    .end local v6    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "dataTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v8    # "forecast":Lcom/iflytek/viafly/weather/Forecast;
    .end local v9    # "forecastElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v10    # "highElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v11    # "highList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v13    # "lowElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v14    # "lowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "pm25Elements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v16    # "pm25List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "tempElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v18    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    return-object v19
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
    .line 162
    .local p1, "interestUpdateElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v4, "tmpArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 165
    .local v3, "interestUpdateElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v5, "datetime"

    .line 166
    invoke-virtual {v3, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "dateTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const-string/jumbo v5, "date"

    invoke-virtual {p0, v5, v2}, Lage;->filterAttributeElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "dateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v1, "dateTime":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 170
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string/jumbo v5, "RecognizeFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "filterInterestUpdateResult: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    .end local v0    # "dateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "dateTime":Ljava/lang/StringBuilder;
    .end local v2    # "dateTimeElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "interestUpdateElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_1
    return-object v4
.end method

.method private c(Ljava/util/List;)Lajz;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/util/xml/XmlElement;",
            ">;)",
            "Lajz;"
        }
    .end annotation

    .prologue
    .local p1, "conditionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    const/4 v8, 0x0

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v3, "descriptionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v5, "imageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lajz;

    invoke-direct {v0}, Lajz;-><init>()V

    .line 189
    .local v0, "condition":Lajz;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 191
    .local v1, "conditionElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v7, "description"

    .line 192
    invoke-virtual {v1, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 193
    .local v2, "descriptionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v2}, Lage;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 194
    const-string/jumbo v7, "image"

    invoke-virtual {v1, v7}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 195
    .local v4, "imageElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v4}, Lage;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 196
    goto :goto_0

    .line 198
    .end local v1    # "conditionElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v2    # "descriptionElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "imageElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 199
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lajz;->a(Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 202
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lajz;->b(Ljava/lang/String;)V

    .line 204
    :cond_2
    return-object v0
.end method


# virtual methods
.method public filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;
    .locals 14
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    iget-object v12, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 31
    :cond_0
    const-string/jumbo v12, "RecognizeFilter"

    const-string/jumbo v13, "recognize result is null"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v12, 0x0

    .line 74
    :goto_0
    return-object v12

    .line 35
    :cond_1
    new-instance v12, Lagb;

    invoke-direct {v12}, Lagb;-><init>()V

    iput-object v12, p0, Lage;->a:Lagb;

    .line 37
    :try_start_0
    iget-object v12, p0, Lage;->a:Lagb;

    invoke-virtual {p0, v12, p1}, Lage;->filterCommonResult(Lcom/iflytek/yd/speech/FilterResult;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 39
    invoke-virtual {p0, p1}, Lage;->filterXmlDoc(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v11

    .line 40
    .local v11, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v11}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v10

    .line 41
    .local v10, "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {p0, v10}, Lage;->getResultElements(Lcom/iflytek/yd/util/xml/XmlElement;)Ljava/util/List;

    move-result-object v9

    .line 42
    .local v9, "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v9}, Lage;->getObjElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 44
    .local v8, "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v1, "cityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v5, "interestDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v3, "forcastList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 49
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 50
    .local v7, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v13, "city"

    invoke-virtual {v7, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "cityElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-virtual {p0, v0}, Lage;->filterSubElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 53
    const-string/jumbo v13, "interest_datetime"

    invoke-virtual {v7, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 54
    .local v6, "interestElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-direct {p0, v6}, Lage;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 56
    const-string/jumbo v13, "forecast"

    .line 57
    invoke-virtual {v7, v13}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 58
    .local v4, "forecastElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-direct {p0, v4}, Lage;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 59
    goto :goto_1

    .line 61
    .end local v0    # "cityElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "forecastElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v6    # "interestElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v7    # "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 62
    iget-object v13, p0, Lage;->a:Lagb;

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Lagb;->a(Ljava/lang/String;)V

    .line 64
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 65
    iget-object v13, p0, Lage;->a:Lagb;

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Lagb;->b(Ljava/lang/String;)V

    .line 68
    :cond_4
    iget-object v12, p0, Lage;->a:Lagb;

    invoke-virtual {v12, v3}, Lagb;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "cityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "forcastList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    .end local v5    # "interestDateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "objElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v9    # "resultElements":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v10    # "rootElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v11    # "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    :goto_2
    iget-object v12, p0, Lage;->a:Lagb;

    goto/16 :goto_0

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "RecognizeFilter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
