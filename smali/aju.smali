.class public Laju;
.super Lvx;
.source "CityWeatherHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 24
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=1101"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 21
    const-string/jumbo v0, "CityWeatherHelper"

    iput-object v0, p0, Laju;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lajw;Z)J
    .locals 8
    .param p1, "cityArea"    # Lajw;
    .param p2, "isLocate"    # Z

    .prologue
    const-wide/16 v4, -0x1

    .line 28
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lajw;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 29
    invoke-virtual {p1}, Lajw;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-wide v4

    .line 33
    :cond_1
    const-string/jumbo v6, "CityWeatherHelper"

    const-string/jumbo v7, "requestCityWeather: "

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v3, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "nlp_data"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v6, "is_local"

    invoke-virtual {v3, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    if-nez p2, :cond_2

    .line 40
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 41
    .local v0, "cityArray":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v1, "cityParam":Lorg/json/JSONObject;
    const-string/jumbo v6, "province"

    invoke-virtual {p1}, Lajw;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string/jumbo v6, "city"

    invoke-virtual {p1}, Lajw;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string/jumbo v6, "area"

    invoke-virtual {p1}, Lajw;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v6, "landmark"

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    const-string/jumbo v6, "locations"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "cityArray":Lorg/json/JSONArray;
    .end local v1    # "cityParam":Lorg/json/JSONObject;
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Laju;->setNeedGZip(Z)V

    .line 55
    const-string/jumbo v4, "1101"

    const/16 v5, 0x7b

    const-string/jumbo v6, "3.0"

    invoke-virtual {p0, v4, v5, v3, v6}, Laju;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "CityWeatherHelper"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
