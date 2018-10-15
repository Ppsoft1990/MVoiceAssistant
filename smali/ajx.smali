.class public Lajx;
.super Lajv;
.source "CityWeatherCardData.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakc;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lajv;-><init>()V

    .line 25
    const-string/jumbo v0, "CityWeatherCardData"

    iput-object v0, p0, Lajx;->a:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lajx;->b:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lajx;->c:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lajx;->d:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lajx;->g:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lajx;->e:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lajx;->f:Ljava/util/List;

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    invoke-direct {p0}, Lajv;-><init>()V

    .line 25
    const-string/jumbo v0, "CityWeatherCardData"

    iput-object v0, p0, Lajx;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p1}, Lajx;->a(Lorg/json/JSONObject;)V

    .line 61
    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 200
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 201
    .local v0, "currentTime":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "dateString":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lajx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lajx;->d:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    iput-object p1, p0, Lajx;->f:Ljava/util/List;

    .line 86
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string/jumbo v0, "province"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lajx;->b(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lajx;->e(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "area"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lajx;->a(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "interestTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lajx;->d(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "forecasts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lajx;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lajx;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lajw;)Z
    .locals 3
    .param p1, "cityArea"    # Lajw;

    .prologue
    const/4 v0, 0x0

    .line 281
    if-nez p1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    invoke-virtual {p1}, Lajw;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajx;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p1}, Lajw;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajx;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p1}, Lajw;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajx;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lajx;)Z
    .locals 3
    .param p1, "cityWeather"    # Lajx;

    .prologue
    const/4 v0, 0x0

    .line 266
    if-nez p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    invoke-virtual {p1}, Lajx;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajx;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p1}, Lajx;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajx;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p1}, Lajx;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lajx;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lajx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "forecasts":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    if-nez p1, :cond_0

    .line 170
    const-string/jumbo v2, ""

    .line 177
    :goto_0
    return-object v2

    .line 173
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 174
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakc;

    .line 175
    .local v1, "forecast":Lakc;
    invoke-virtual {v1}, Lakc;->h()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 177
    .end local v1    # "forecast":Lakc;
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lajx;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lajx;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "futureInfo"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lajx;->g:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lakc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lajx;->f:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "interesttime"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lajx;->e:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lajx;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lajx;->c:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lajx;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lakc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v4, "forecastList":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, "forecastArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 150
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 152
    .local v3, "forecastJson":Lorg/json/JSONObject;
    new-instance v1, Lakc;

    invoke-direct {v1, v3}, Lakc;-><init>(Lorg/json/JSONObject;)V

    .line 154
    .local v1, "forecast":Lakc;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "forecast":Lakc;
    .end local v2    # "forecastArray":Lorg/json/JSONArray;
    .end local v3    # "forecastJson":Lorg/json/JSONObject;
    .end local v5    # "i":I
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "CityWeatherCardData"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v4
.end method

.method public g()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 125
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "province"

    invoke-virtual {p0}, Lajx;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string/jumbo v2, "city"

    invoke-virtual {p0}, Lajx;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string/jumbo v2, "area"

    invoke-virtual {p0}, Lajx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string/jumbo v2, "interestTime"

    invoke-virtual {p0}, Lajx;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-virtual {p0}, Lajx;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    const-string/jumbo v2, "forecasts"

    invoke-virtual {p0}, Lajx;->d()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lajx;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :goto_0
    return-object v1

    .line 134
    :cond_0
    const-string/jumbo v2, "forecasts"

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "CityWeatherCardData"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 4

    .prologue
    .line 182
    iget-object v1, p0, Lajx;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-static {}, Lajx;->i()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "dateStr":Ljava/lang/String;
    iget-object v1, p0, Lajx;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string/jumbo v1, "CityWeatherCardData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValid: interestTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lajx;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x1

    .line 191
    .end local v0    # "dateStr":Ljava/lang/String;
    :goto_0
    return v1

    .line 190
    :cond_0
    const-string/jumbo v1, "CityWeatherCardData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "is not Valid: interestTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lajx;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 208
    iget-object v6, p0, Lajx;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lajx;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v5

    .line 211
    :cond_1
    iget-object v6, p0, Lajx;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lajx;->f:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 215
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lajx;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 216
    iget-object v6, p0, Lajx;->f:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lakc;

    .line 217
    .local v4, "weatherForecast":Lakc;
    if-eqz v4, :cond_0

    .line 220
    invoke-virtual {v4}, Lakc;->g()Laka;

    move-result-object v2

    .line 221
    .local v2, "dateTime":Laka;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Laka;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 222
    invoke-virtual {v2}, Laka;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 223
    invoke-virtual {v2}, Laka;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 227
    invoke-virtual {v4}, Lakc;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 228
    invoke-virtual {v4}, Lakc;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 232
    if-nez v3, :cond_3

    .line 234
    invoke-virtual {v4}, Lakc;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 238
    invoke-virtual {v4}, Lakc;->f()Lajz;

    move-result-object v1

    .line 239
    .local v1, "currentCondition":Lajz;
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Lajz;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 241
    invoke-virtual {v1}, Lajz;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 215
    .end local v1    # "currentCondition":Lajz;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 246
    :cond_3
    invoke-virtual {v4}, Lakc;->a()Lajz;

    move-result-object v0

    .line 247
    .local v0, "condition":Lajz;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lajz;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 252
    invoke-virtual {v0}, Lajz;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_0

    .line 257
    .end local v0    # "condition":Lajz;
    .end local v2    # "dateTime":Laka;
    .end local v4    # "weatherForecast":Lakc;
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CityWeatherCardData{area=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lajx;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", city=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lajx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", province=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lajx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
