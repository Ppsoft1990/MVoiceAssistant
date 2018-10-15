.class public Lajo;
.super Ljava/lang/Object;
.source "CityWeatherParse.java"


# direct methods
.method public static a(Ljava/lang/String;Z)I
    .locals 10
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "isSmall"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, -0x1

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 267
    :goto_0
    return v3

    .line 229
    :cond_0
    move-object v1, p0

    .line 230
    .local v1, "image":Ljava/lang/String;
    const-string/jumbo v5, "CityWeatherParse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5929\u6c14\u63cf\u8ff0\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "imageTemp":[Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 234
    invoke-static {v1}, Lajo;->g(Ljava/lang/String;)I

    move-result v3

    .line 238
    .local v3, "newImageId":I
    :goto_1
    if-ne v4, v3, :cond_1

    .line 239
    const-string/jumbo v5, "\u5230"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 240
    const-string/jumbo v4, "\u5230"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 241
    array-length v4, v2

    if-ne v4, v9, :cond_1

    .line 242
    const-string/jumbo v4, "CityWeatherParse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u63cf\u8ff0\u62c6\u5206\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz p1, :cond_3

    .line 244
    aget-object v4, v2, v8

    invoke-static {v4}, Lajo;->g(Ljava/lang/String;)I

    move-result v3

    .line 266
    :cond_1
    :goto_2
    const-string/jumbo v4, "CityWeatherParse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleWeatherImg ResourceId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    .end local v3    # "newImageId":I
    :cond_2
    invoke-static {v1}, Lajo;->f(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "newImageId":I
    goto :goto_1

    .line 246
    :cond_3
    aget-object v4, v2, v8

    invoke-static {v4}, Lajo;->f(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 249
    :cond_4
    const-string/jumbo v5, "\u8f6c"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    const-string/jumbo v5, "\u8f6c"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 251
    array-length v5, v2

    if-ne v9, v5, :cond_1

    .line 252
    array-length v6, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 253
    .local v0, "emp":Ljava/lang/String;
    const-string/jumbo v7, "CityWeatherParse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u63cf\u8ff0\u62c6\u5206\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-eqz p1, :cond_5

    .line 255
    invoke-static {v0}, Lajo;->g(Ljava/lang/String;)I

    move-result v3

    .line 259
    :goto_4
    if-ne v4, v3, :cond_1

    .line 252
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 257
    :cond_5
    invoke-static {v0}, Lajo;->f(Ljava/lang/String;)I

    move-result v3

    goto :goto_4
.end method

.method public static a(Lajw;Z)Ljava/lang/String;
    .locals 2
    .param p0, "cityArea"    # Lajw;
    .param p1, "isDetail"    # Z

    .prologue
    .line 201
    const-string/jumbo v0, ""

    .line 202
    .local v0, "cityName":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lajw;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    .line 204
    const-string/jumbo v0, "\u5929\u6c14"

    .line 216
    :goto_0
    return-object v0

    .line 206
    :cond_1
    const-string/jumbo v0, "\u5b9a\u4f4d\u5931\u8d25"

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lajw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 210
    invoke-virtual {p0}, Lajw;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {p0}, Lajw;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "cards/weather/area.json"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 58
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 59
    .local v4, "streamReader":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v6, "CityWeatherParse"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "streamReader":Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 65
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "streamReader":Ljava/io/InputStreamReader;
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 66
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 70
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "streamReader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "CityWeatherParse"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajx;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "cityWeathers":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    if-nez p0, :cond_0

    .line 111
    const-string/jumbo v2, ""

    .line 118
    :goto_0
    return-object v2

    .line 114
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 115
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajx;

    .line 116
    .local v1, "cityWeatherCardData":Lajx;
    invoke-virtual {v1}, Lajx;->g()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 118
    .end local v1    # "cityWeatherCardData":Lajx;
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "cityJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, "citysArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 39
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 40
    .local v1, "cityObj":Lorg/json/JSONObject;
    new-instance v0, Lajw;

    invoke-direct {v0, v1}, Lajw;-><init>(Lorg/json/JSONObject;)V

    .line 41
    .local v0, "cityArea":Lajw;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "cityArea":Lajw;
    .end local v1    # "cityObj":Lorg/json/JSONObject;
    .end local v2    # "citysArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 46
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v6, "CityWeatherParse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCitysList: size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v5
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lajx;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lajx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "cityList":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    .local p1, "cityWeathers":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v3, "cityWeatherList":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 165
    const-string/jumbo v5, "CityWeatherParse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initData: citysize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    .line 168
    .local v0, "cityArea":Lajw;
    const/4 v4, 0x0

    .line 170
    .local v4, "isExist":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajx;

    .line 171
    .local v1, "cityWeather":Lajx;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lajx;->a(Lajw;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 172
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const/4 v4, 0x1

    .line 174
    const-string/jumbo v6, "CityWeatherParse"

    const-string/jumbo v7, "getCityWeathersByCitys: isExist"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v1    # "cityWeather":Lajx;
    :cond_2
    if-nez v4, :cond_0

    .line 179
    new-instance v2, Lajx;

    invoke-direct {v2}, Lajx;-><init>()V

    .line 180
    .local v2, "cityWeatherCardData":Lajx;
    invoke-virtual {v0}, Lajw;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lajx;->b(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lajw;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lajx;->e(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lajw;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lajx;->a(Ljava/lang/String;)V

    .line 183
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const-string/jumbo v6, "CityWeatherParse"

    const-string/jumbo v7, "getCityWeathersByCitys: create new "

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v0    # "cityArea":Lajw;
    .end local v2    # "cityWeatherCardData":Lajx;
    .end local v4    # "isExist":Z
    :cond_3
    const-string/jumbo v5, "CityWeatherParse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadCache:List size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_4
    return-object v3
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "citys":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    if-nez p0, :cond_0

    .line 151
    const-string/jumbo v2, ""

    .line 158
    :goto_0
    return-object v2

    .line 154
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 155
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajw;

    .line 156
    .local v1, "cityArea":Lajw;
    invoke-virtual {v1}, Lajw;->f()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 158
    .end local v1    # "cityArea":Lajw;
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lajx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "cityWeatherList":Ljava/util/List;, "Ljava/util/List<Lajx;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 86
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "cityWeatherArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 88
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 90
    .local v2, "cityWeatherJson":Lorg/json/JSONObject;
    new-instance v0, Lajx;

    invoke-direct {v0, v2}, Lajx;-><init>(Lorg/json/JSONObject;)V

    .line 92
    .local v0, "cityWeather":Lajx;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "cityWeather":Lajx;
    .end local v1    # "cityWeatherArray":Lorg/json/JSONArray;
    .end local v2    # "cityWeatherJson":Lorg/json/JSONObject;
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .line 95
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "CityWeatherParse"

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v6, "CityWeatherParse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getForecastsByJsonArray:size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v3
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lajw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v3, "cityList":Ljava/util/List;, "Ljava/util/List<Lajw;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "cityArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 132
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 133
    .local v2, "cityJson":Lorg/json/JSONObject;
    new-instance v0, Lajw;

    invoke-direct {v0, v2}, Lajw;-><init>(Lorg/json/JSONObject;)V

    .line 134
    .local v0, "cityAera":Lajw;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "cityAera":Lajw;
    .end local v1    # "cityArray":Lorg/json/JSONArray;
    .end local v2    # "cityJson":Lorg/json/JSONObject;
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .line 137
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "CityWeatherParse"

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v6, "CityWeatherParse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getcityListsByJsonArray:size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v3
.end method

.method public static d(Ljava/lang/String;)I
    .locals 10
    .param p0, "strPm25Num"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0xc8

    const/16 v7, 0x96

    const/16 v6, 0x64

    const/16 v5, 0x32

    .line 393
    const/4 v2, -0x1

    .line 395
    .local v2, "intPm25Num":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 400
    :goto_0
    const/4 v0, -0x1

    .line 401
    .local v0, "color":I
    if-ltz v2, :cond_1

    if-gt v2, v5, :cond_1

    .line 402
    const v0, -0x993ed1

    .line 415
    :cond_0
    :goto_1
    return v0

    .line 396
    .end local v0    # "color":I
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CityWeatherParse"

    const-string/jumbo v4, "strPm25Num to int"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "color":I
    :cond_1
    if-le v2, v5, :cond_2

    if-gt v2, v6, :cond_2

    .line 404
    const v0, -0xd31f1

    goto :goto_1

    .line 405
    :cond_2
    if-le v2, v6, :cond_3

    if-gt v2, v7, :cond_3

    .line 406
    const v0, -0x568df

    goto :goto_1

    .line 407
    :cond_3
    if-le v2, v7, :cond_4

    if-gt v2, v8, :cond_4

    .line 408
    const v0, -0xfba6

    goto :goto_1

    .line 409
    :cond_4
    if-le v2, v8, :cond_5

    if-gt v2, v9, :cond_5

    .line 410
    const v0, -0x61f518

    goto :goto_1

    .line 411
    :cond_5
    if-le v2, v9, :cond_0

    .line 412
    const v0, -0x48e4ae

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "strPm25Num"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0xc8

    const/16 v7, 0x96

    const/16 v6, 0x64

    const/16 v5, 0x32

    .line 419
    const/4 v1, -0x1

    .line 421
    .local v1, "intPm25Num":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 426
    :goto_0
    const-string/jumbo v2, ""

    .line 427
    .local v2, "pm25Des":Ljava/lang/String;
    if-ltz v1, :cond_1

    if-gt v1, v5, :cond_1

    .line 428
    const-string/jumbo v2, "\u7a7a\u6c14\u8d28\u91cf\u4f18"

    .line 441
    :cond_0
    :goto_1
    return-object v2

    .line 422
    .end local v2    # "pm25Des":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "CityWeatherParse"

    const-string/jumbo v4, "strPm25Num to int"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 429
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pm25Des":Ljava/lang/String;
    :cond_1
    if-le v1, v5, :cond_2

    if-gt v1, v6, :cond_2

    .line 430
    const-string/jumbo v2, "\u7a7a\u6c14\u8d28\u91cf\u826f\u597d"

    goto :goto_1

    .line 431
    :cond_2
    if-le v1, v6, :cond_3

    if-gt v1, v7, :cond_3

    .line 432
    const-string/jumbo v2, "\u8f7b\u5ea6\u6c61\u67d3"

    goto :goto_1

    .line 433
    :cond_3
    if-le v1, v7, :cond_4

    if-gt v1, v8, :cond_4

    .line 434
    const-string/jumbo v2, "\u4e2d\u5ea6\u6c61\u67d3"

    goto :goto_1

    .line 435
    :cond_4
    if-le v1, v8, :cond_5

    if-gt v1, v9, :cond_5

    .line 436
    const-string/jumbo v2, "\u91cd\u5ea6\u6c61\u67d3"

    goto :goto_1

    .line 437
    :cond_5
    if-le v1, v9, :cond_0

    .line 438
    const-string/jumbo v2, "\u4e25\u91cd\u6c61\u67d3"

    goto :goto_1
.end method

.method private static f(Ljava/lang/String;)I
    .locals 1
    .param p0, "image"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string/jumbo v0, "\u9635\u96e8\uff1b\u5c0f\u96e8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const v0, 0x7f020283

    .line 327
    :goto_0
    return v0

    .line 279
    :cond_0
    const-string/jumbo v0, "\u4e2d\u96e8\uff1b\u5c0f\u96e8-\u4e2d\u96e8"

    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    const v0, 0x7f020287

    goto :goto_0

    .line 282
    :cond_1
    const-string/jumbo v0, "\u4e2d\u96e8-\u5927\u96e8\uff1b\u5927\u96e8"

    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const v0, 0x7f020277

    goto :goto_0

    .line 285
    :cond_2
    const-string/jumbo v0, "\u5927\u66b4\u96e8-\u7279\u5927\u66b4\u96e8\uff1b\u7279\u5927\u66b4\u96e8\uff1b\u5927\u96e8-\u66b4\u96e8\uff1b\u5927\u66b4\u96e8\uff1b\u66b4\u96e8-\u5927\u66b4\u96e8\uff1b\u66b4\u96e8"

    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    const v0, 0x7f02027d

    goto :goto_0

    .line 288
    :cond_3
    const-string/jumbo v0, "\u51bb\u96e8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    const v0, 0x7f020281

    goto :goto_0

    .line 290
    :cond_4
    const-string/jumbo v0, "\u96f7\u9635\u96e8"

    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 292
    const v0, 0x7f020293

    goto :goto_0

    .line 293
    :cond_5
    const-string/jumbo v0, "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"

    .line 294
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    const v0, 0x7f020295

    goto :goto_0

    .line 296
    :cond_6
    const-string/jumbo v0, "\u96e8\u5939\u96ea"

    .line 297
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 298
    const v0, 0x7f02028d

    goto :goto_0

    .line 299
    :cond_7
    const-string/jumbo v0, "\u9635\u96ea\uff1b\u5c0f\u96ea"

    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 301
    const v0, 0x7f020285

    goto :goto_0

    .line 302
    :cond_8
    const-string/jumbo v0, "\u4e2d\u96ea\uff1b\u5c0f\u96ea-\u4e2d\u96ea"

    .line 303
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 304
    const v0, 0x7f020289

    goto :goto_0

    .line 305
    :cond_9
    const-string/jumbo v0, "\u4e2d\u96ea-\u5927\u96ea\uff1b\u5927\u96ea"

    .line 306
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 307
    const v0, 0x7f020279

    goto/16 :goto_0

    .line 308
    :cond_a
    const-string/jumbo v0, "\u5927\u96ea-\u66b4\u96ea\uff1b\u66b4\u96ea"

    .line 309
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 310
    const v0, 0x7f02027f

    goto/16 :goto_0

    .line 311
    :cond_b
    const-string/jumbo v0, "\u6674"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 312
    const v0, 0x7f020291

    goto/16 :goto_0

    .line 313
    :cond_c
    const-string/jumbo v0, "\u591a\u4e91"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 314
    const v0, 0x7f020271

    goto/16 :goto_0

    .line 315
    :cond_d
    const-string/jumbo v0, "\u9634"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 316
    const v0, 0x7f02028b

    goto/16 :goto_0

    .line 317
    :cond_e
    const-string/jumbo v0, "\u96fe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 318
    const v0, 0x7f020275

    goto/16 :goto_0

    .line 319
    :cond_f
    const-string/jumbo v0, "\u6c99\u5c18\u66b4\uff1b\u6d6e\u5c18\uff1b\u626c\u6c99\uff1b\u6c99\u5c18"

    .line 320
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 321
    const v0, 0x7f02028f

    goto/16 :goto_0

    .line 322
    :cond_10
    const-string/jumbo v0, "\u973e\uff1b\u96fe\u973e"

    .line 323
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 324
    const v0, 0x7f02027b

    goto/16 :goto_0

    .line 327
    :cond_11
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private static g(Ljava/lang/String;)I
    .locals 1
    .param p0, "image"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string/jumbo v0, "\u9635\u96e8\uff1b\u5c0f\u96e8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const v0, 0x7f020284

    .line 388
    :goto_0
    return v0

    .line 340
    :cond_0
    const-string/jumbo v0, "\u4e2d\u96e8\uff1b\u5c0f\u96e8-\u4e2d\u96e8"

    .line 341
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const v0, 0x7f020288

    goto :goto_0

    .line 343
    :cond_1
    const-string/jumbo v0, "\u4e2d\u96e8-\u5927\u96e8\uff1b\u5927\u96e8"

    .line 344
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    const v0, 0x7f020278

    goto :goto_0

    .line 346
    :cond_2
    const-string/jumbo v0, "\u5927\u66b4\u96e8-\u7279\u5927\u66b4\u96e8\uff1b\u7279\u5927\u66b4\u96e8\uff1b\u5927\u96e8-\u66b4\u96e8\uff1b\u5927\u66b4\u96e8\uff1b\u66b4\u96e8-\u5927\u66b4\u96e8\uff1b\u66b4\u96e8"

    .line 347
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    const v0, 0x7f02027e

    goto :goto_0

    .line 349
    :cond_3
    const-string/jumbo v0, "\u51bb\u96e8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    const v0, 0x7f020282

    goto :goto_0

    .line 351
    :cond_4
    const-string/jumbo v0, "\u96f7\u9635\u96e8"

    .line 352
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 353
    const v0, 0x7f020294

    goto :goto_0

    .line 354
    :cond_5
    const-string/jumbo v0, "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"

    .line 355
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 356
    const v0, 0x7f020296

    goto :goto_0

    .line 357
    :cond_6
    const-string/jumbo v0, "\u96e8\u5939\u96ea"

    .line 358
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 359
    const v0, 0x7f02028e

    goto :goto_0

    .line 360
    :cond_7
    const-string/jumbo v0, "\u9635\u96ea\uff1b\u5c0f\u96ea"

    .line 361
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 362
    const v0, 0x7f020286

    goto :goto_0

    .line 363
    :cond_8
    const-string/jumbo v0, "\u4e2d\u96ea\uff1b\u5c0f\u96ea-\u4e2d\u96ea"

    .line 364
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 365
    const v0, 0x7f02028a

    goto :goto_0

    .line 366
    :cond_9
    const-string/jumbo v0, "\u4e2d\u96ea-\u5927\u96ea\uff1b\u5927\u96ea"

    .line 367
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 368
    const v0, 0x7f02027a

    goto/16 :goto_0

    .line 369
    :cond_a
    const-string/jumbo v0, "\u5927\u96ea-\u66b4\u96ea\uff1b\u66b4\u96ea"

    .line 370
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 371
    const v0, 0x7f020280

    goto/16 :goto_0

    .line 372
    :cond_b
    const-string/jumbo v0, "\u6674"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 373
    const v0, 0x7f020292

    goto/16 :goto_0

    .line 374
    :cond_c
    const-string/jumbo v0, "\u591a\u4e91"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 375
    const v0, 0x7f020272

    goto/16 :goto_0

    .line 376
    :cond_d
    const-string/jumbo v0, "\u9634"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 377
    const v0, 0x7f02028c

    goto/16 :goto_0

    .line 378
    :cond_e
    const-string/jumbo v0, "\u96fe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 379
    const v0, 0x7f020276

    goto/16 :goto_0

    .line 380
    :cond_f
    const-string/jumbo v0, "\u6c99\u5c18\u66b4\uff1b\u6d6e\u5c18\uff1b\u626c\u6c99\uff1b\u6c99\u5c18"

    .line 381
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 382
    const v0, 0x7f020290

    goto/16 :goto_0

    .line 383
    :cond_10
    const-string/jumbo v0, "\u973e\uff1b\u96fe\u973e"

    .line 384
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 385
    const v0, 0x7f02027c

    goto/16 :goto_0

    .line 388
    :cond_11
    const/4 v0, -0x1

    goto/16 :goto_0
.end method
