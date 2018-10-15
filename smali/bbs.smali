.class public Lbbs;
.super Lvx;
.source "WeatherBizHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 28
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=1002"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;)J
    .locals 2
    .param p1, "dataSourceId"    # Ljava/lang/String;
    .param p2, "dataSourceName"    # Ljava/lang/String;
    .param p3, "addressArray"    # Lcom/iflytek/common/lbs/XAddress;

    .prologue
    .line 36
    const-string/jumbo v0, "0"

    invoke-virtual {p0, p1, p2, p3, v0}, Lbbs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;Ljava/lang/String;)J
    .locals 8
    .param p1, "dataSourceId"    # Ljava/lang/String;
    .param p2, "dataSourceName"    # Ljava/lang/String;
    .param p3, "addressArray"    # Lcom/iflytek/common/lbs/XAddress;
    .param p4, "mode"    # Ljava/lang/String;

    .prologue
    .line 48
    if-nez p3, :cond_0

    .line 49
    const-wide/16 v6, -0x1

    .line 74
    .end local p1    # "dataSourceId":Ljava/lang/String;
    .end local p2    # "dataSourceName":Ljava/lang/String;
    :goto_0
    return-wide v6

    .line 51
    .restart local p1    # "dataSourceId":Ljava/lang/String;
    .restart local p2    # "dataSourceName":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "param"

    invoke-direct {v4, v5}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 53
    .local v4, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-static {}, Loa;->a()Loa;

    move-result-object v5

    invoke-virtual {v5}, Loa;->d()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 54
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v0, :cond_1

    .line 55
    const-string/jumbo v5, "valat"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lbbs;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v5, "valong"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lbbs;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v5, "vacity"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lbbs;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v5, "vapos"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lbbs;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    const-string/jumbo v5, "object"

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    .line 63
    .local v3, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v5, "data_source"

    invoke-direct {v1, v5}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "dataSrcElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v5, "id"

    invoke-virtual {v1, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    if-eqz p1, :cond_2

    .end local p1    # "dataSourceId":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, p1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v5, "name"

    invoke-virtual {v1, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    if-eqz p2, :cond_3

    .end local p2    # "dataSourceName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, p2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 68
    const-string/jumbo v5, "location"

    invoke-virtual {v3, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    .line 69
    .local v2, "locationElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v5, "province"

    invoke-virtual {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    invoke-virtual {p3}, Lcom/iflytek/common/lbs/XAddress;->getProvince()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v5, "city"

    invoke-virtual {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    invoke-virtual {p3}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v5, "area"

    invoke-virtual {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    invoke-virtual {p3}, Lcom/iflytek/common/lbs/XAddress;->getArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v5, "landmark"

    invoke-virtual {v2, v5}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v5, "weather_query_client"

    const/16 v6, 0x18

    invoke-virtual {p0, v5, v6, v4, p4}, Lbbs;->sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_0

    .line 64
    .end local v2    # "locationElement":Lcom/iflytek/yd/util/xml/XmlElement;
    .restart local p1    # "dataSourceId":Ljava/lang/String;
    .restart local p2    # "dataSourceName":Ljava/lang/String;
    :cond_2
    const-string/jumbo p1, ""

    goto :goto_1

    .line 65
    .end local p1    # "dataSourceId":Ljava/lang/String;
    :cond_3
    const-string/jumbo p2, ""

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/lbs/XAddress;Ljava/util/ArrayList;Ljava/lang/String;)J
    .locals 10
    .param p1, "dataSourceId"    # Ljava/lang/String;
    .param p2, "dataSourceName"    # Ljava/lang/String;
    .param p3, "addressArray"    # Lcom/iflytek/common/lbs/XAddress;
    .param p5, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iflytek/common/lbs/XAddress;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/weather/CityLocationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 87
    .local p4, "favoriteCityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/weather/CityLocationInfo;>;"
    if-nez p3, :cond_0

    .line 88
    const-wide/16 v8, -0x1

    .line 138
    .end local p1    # "dataSourceId":Ljava/lang/String;
    .end local p2    # "dataSourceName":Ljava/lang/String;
    :goto_0
    return-wide v8

    .line 91
    .restart local p1    # "dataSourceId":Ljava/lang/String;
    .restart local p2    # "dataSourceName":Ljava/lang/String;
    :cond_0
    new-instance v7, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v8, "param"

    invoke-direct {v7, v8}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 93
    .local v7, "paramElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-static {}, Loa;->a()Loa;

    move-result-object v8

    invoke-virtual {v8}, Loa;->d()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 94
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v0, :cond_1

    .line 95
    const-string/jumbo v8, "valat"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lbbs;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v8, "valong"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lbbs;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v8, "vacity"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lbbs;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v8, "vapos"

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lbbs;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    const-string/jumbo v8, "object"

    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v6

    .line 103
    .local v6, "objElement":Lcom/iflytek/yd/util/xml/XmlElement;
    new-instance v1, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v8, "data_source"

    invoke-direct {v1, v8}, Lcom/iflytek/yd/util/xml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "dataSrcElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "id"

    invoke-virtual {v1, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    if-eqz p1, :cond_9

    .end local p1    # "dataSourceId":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8, p1}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v8, "name"

    invoke-virtual {v1, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    if-eqz p2, :cond_a

    .end local p2    # "dataSourceName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8, p2}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6, v1}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Lcom/iflytek/yd/util/xml/XmlElement;)V

    .line 109
    const-string/jumbo v8, "localWeather"

    invoke-virtual {v8, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "all"

    invoke-virtual {v8, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 110
    :cond_2
    const-string/jumbo v8, "location"

    invoke-virtual {v6, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    .line 111
    .local v5, "locationElement":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v8, "province"

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {p3}, Lcom/iflytek/common/lbs/XAddress;->getProvince()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v8, "city"

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {p3}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v8, "area"

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {p3}, Lcom/iflytek/common/lbs/XAddress;->getArea()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v8, "landmark"

    invoke-virtual {v5, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    const-string/jumbo v9, "0"

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 117
    .end local v5    # "locationElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_3
    if-eqz p4, :cond_b

    .line 118
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_b

    .line 119
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/weather/CityLocationInfo;

    .line 120
    .local v2, "favoriteCityInfo":Lcom/iflytek/viafly/weather/CityLocationInfo;
    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/CityLocationInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "all"

    invoke-virtual {v8, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 121
    :cond_4
    const-string/jumbo v8, "location"

    invoke-virtual {v6, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    .line 122
    .local v3, "favoriteLocationElement":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/CityLocationInfo;->getProvince()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 123
    const-string/jumbo v8, "province"

    invoke-virtual {v3, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/CityLocationInfo;->getProvince()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 125
    :cond_5
    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/CityLocationInfo;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 126
    const-string/jumbo v8, "city"

    invoke-virtual {v3, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/CityLocationInfo;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 128
    :cond_6
    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/CityLocationInfo;->getArea()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 129
    const-string/jumbo v8, "area"

    invoke-virtual {v3, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/CityLocationInfo;->getArea()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 131
    :cond_7
    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/CityLocationInfo;->getLandmark()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 132
    const-string/jumbo v8, "landmark"

    invoke-virtual {v3, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->addSubElement(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v8

    invoke-virtual {v2}, Lcom/iflytek/viafly/weather/CityLocationInfo;->getLandmark()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/yd/util/xml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 118
    .end local v3    # "favoriteLocationElement":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 104
    .end local v2    # "favoriteCityInfo":Lcom/iflytek/viafly/weather/CityLocationInfo;
    .end local v4    # "i":I
    .restart local p1    # "dataSourceId":Ljava/lang/String;
    .restart local p2    # "dataSourceName":Ljava/lang/String;
    :cond_9
    const-string/jumbo p1, ""

    goto/16 :goto_1

    .line 105
    .end local p1    # "dataSourceId":Ljava/lang/String;
    :cond_a
    const-string/jumbo p2, ""

    goto/16 :goto_2

    .line 138
    .end local p2    # "dataSourceName":Ljava/lang/String;
    :cond_b
    const-string/jumbo v8, "weather_query_client"

    const/16 v9, 0x18

    invoke-virtual {p0, v8, v9, v7}, Lbbs;->sendRequest(Ljava/lang/String;ILcom/iflytek/yd/util/xml/XmlElement;)J

    move-result-wide v8

    goto/16 :goto_0
.end method
