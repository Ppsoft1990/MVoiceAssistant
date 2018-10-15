.class public Lvf;
.super Lvz;
.source "BannerDataParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvz",
        "<",
        "Lvi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lvz;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lvj;
    .locals 10
    .param p1, "banner"    # Lorg/json/JSONObject;

    .prologue
    .line 62
    new-instance v0, Lvj;

    invoke-direct {v0}, Lvj;-><init>()V

    .line 65
    .local v0, "bannerItem":Lvj;
    :try_start_0
    const-string/jumbo v8, "id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "id":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 67
    invoke-virtual {v0, v4}, Lvj;->a(Ljava/lang/String;)V

    .line 71
    :cond_0
    const-string/jumbo v8, "desc"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "desc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 73
    invoke-virtual {v0, v1}, Lvj;->b(Ljava/lang/String;)V

    .line 77
    :cond_1
    const-string/jumbo v8, "picUrl"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "picUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 79
    invoke-virtual {v0, v5}, Lvj;->c(Ljava/lang/String;)V

    .line 83
    :cond_2
    const-string/jumbo v8, "target"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "target":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 85
    invoke-virtual {v0, v7}, Lvj;->d(Ljava/lang/String;)V

    .line 89
    :cond_3
    const-string/jumbo v8, "startTime"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "startTime":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 91
    invoke-virtual {v0, v6}, Lvj;->e(Ljava/lang/String;)V

    .line 94
    :cond_4
    const-string/jumbo v8, "endTime"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "endTime":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 96
    invoke-virtual {v0, v3}, Lvj;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "endTime":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "picUrl":Ljava/lang/String;
    .end local v6    # "startTime":Ljava/lang/String;
    .end local v7    # "target":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "BannerDataParser"

    const-string/jumbo v9, "parseBannerItem() exception happened"

    invoke-static {v8, v9, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lvi;Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Lvi;
    .param p2, "jsonResult"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string/jumbo v7, "BannerDataParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "filterBannerDataInfo, jsonResult is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v4, "doc":Lorg/json/JSONObject;
    const-string/jumbo v7, "banners"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 40
    .local v1, "bannerArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, "bannerDataList":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 43
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 44
    .local v0, "banner":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, v0}, Lvf;->a(Lorg/json/JSONObject;)Lvj;

    move-result-object v3

    .line 48
    .local v3, "bannerItem":Lvj;
    invoke-direct {p0, v3}, Lvf;->a(Lvj;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 49
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v3    # "bannerItem":Lvj;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "banner":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {p1, v2}, Lvi;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "bannerArray":Lorg/json/JSONArray;
    .end local v2    # "bannerDataList":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    .end local v4    # "doc":Lorg/json/JSONObject;
    .end local v6    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 56
    :catch_0
    move-exception v5

    .line 57
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "BannerDataParser"

    const-string/jumbo v8, "filterBannerDataInfo() exception happened"

    invoke-static {v7, v8, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private a(Lvj;)Z
    .locals 1
    .param p1, "bannerItem"    # Lvj;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lvj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lvj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lvi;
    .locals 4
    .param p1, "jsonResult"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string/jumbo v1, "BannerDataParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "filter, jsonResult is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Lvi;

    invoke-direct {v0}, Lvi;-><init>()V

    .line 29
    .local v0, "result":Lvi;
    invoke-static {v0, p1}, Lvf;->b(Lwa;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, v0, p1}, Lvf;->a(Lvi;Ljava/lang/String;)V

    .line 31
    return-object v0
.end method
