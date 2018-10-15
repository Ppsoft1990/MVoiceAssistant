.class public Lve;
.super Ljava/lang/Object;
.source "BannerDataManager.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve$a;
    }
.end annotation


# static fields
.field private static c:Lve;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lvd;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lve$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lve;->b:Lvd;

    .line 50
    iput-object p1, p0, Lve;->a:Landroid/content/Context;

    .line 51
    new-instance v0, Lvd;

    invoke-direct {v0, p1, p0}, Lvd;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lve;->b:Lvd;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lve;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    invoke-static {}, Lvg;->a()Lvg;

    move-result-object v0

    iget-object v1, p0, Lve;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lvg;->a(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lvg;->a()Lvg;

    move-result-object v0

    iget-object v1, p0, Lve;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lvg;->b(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lvj;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v1, v0

    .line 268
    :cond_0
    :goto_0
    return-object v1

    .line 232
    :cond_1
    const-string/jumbo v7, "BannerDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readCacheBannerData, key is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_extra_banner_data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "bannerDataString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v1, v0

    .line 236
    goto :goto_0

    .line 239
    :cond_2
    new-instance v2, Lvf;

    invoke-direct {v2}, Lvf;-><init>()V

    .line 240
    .local v2, "bannerDataParser":Lvf;
    invoke-virtual {v2, v3}, Lvf;->a(Ljava/lang/String;)Lvi;

    move-result-object v5

    .line 242
    .local v5, "cacheBannerData":Lvi;
    if-eqz v5, :cond_8

    .line 243
    invoke-virtual {v5}, Lvi;->a()Ljava/util/List;

    move-result-object v1

    .line 244
    .local v1, "bannerDataList":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    if-eqz p2, :cond_0

    .line 248
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_4

    :cond_3
    move-object v1, v0

    .line 249
    goto :goto_0

    .line 251
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v0, "availableCacheBannerData":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 253
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvj;

    .line 255
    .local v4, "bannerItem":Lvj;
    if-eqz v4, :cond_6

    .line 256
    invoke-virtual {v4}, Lvj;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lvj;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lve;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 257
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 259
    :cond_6
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lvj;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 260
    invoke-static {}, Lvg;->a()Lvg;

    move-result-object v7

    invoke-virtual {v4}, Lvj;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lvg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v4    # "bannerItem":Lvj;
    :cond_7
    move-object v1, v0

    .line 265
    goto/16 :goto_0

    .end local v0    # "availableCacheBannerData":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    .end local v1    # "bannerDataList":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    .end local v6    # "i":I
    :cond_8
    move-object v1, v0

    .line 268
    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Lve;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Lve;->c:Lve;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lve;

    invoke-direct {v0, p0}, Lve;-><init>(Landroid/content/Context;)V

    sput-object v0, Lve;->c:Lve;

    .line 61
    :cond_0
    sget-object v0, Lve;->c:Lve;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 17
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lil;->a()Lil;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "_extra_banner_data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "bannerDataString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 79
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, "bannerDataJsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v1, "avaliableBannerData":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 84
    const-string/jumbo v14, "banners"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 85
    .local v5, "bannerItemJsonArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 86
    .local v2, "avaliableBannerItemArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 88
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 89
    .local v11, "length":I
    const/4 v14, 0x5

    if-le v11, v14, :cond_0

    .line 90
    const/4 v11, 0x5

    .line 93
    :cond_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_7

    .line 94
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 95
    .local v6, "bannerItemJsonObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 97
    const-string/jumbo v14, "id"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, "id":Ljava/lang/String;
    const-string/jumbo v14, "picUrl"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 99
    .local v12, "picUrl":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 93
    .end local v10    # "id":Ljava/lang/String;
    .end local v12    # "picUrl":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 104
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v12    # "picUrl":Ljava/lang/String;
    :cond_2
    const-string/jumbo v14, "startTime"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "startTimeString":Ljava/lang/String;
    const-string/jumbo v14, "endTime"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "endTimeString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lve;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 111
    invoke-static {}, Lhl;->o()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 113
    invoke-static {}, Lvg;->a()Lvg;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v12, v0}, Lvg;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 114
    const-string/jumbo v14, "isPicDownload"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v14, "picUrl"

    .line 116
    invoke-static {}, Lvg;->a()Lvg;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v12, v0}, Lvg;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 115
    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :goto_2
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 133
    .end local v1    # "avaliableBannerData":Lorg/json/JSONObject;
    .end local v2    # "avaliableBannerItemArray":Lorg/json/JSONArray;
    .end local v3    # "bannerDataJsonObject":Lorg/json/JSONObject;
    .end local v5    # "bannerItemJsonArray":Lorg/json/JSONArray;
    .end local v6    # "bannerItemJsonObject":Lorg/json/JSONObject;
    .end local v8    # "endTimeString":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "length":I
    .end local v12    # "picUrl":Ljava/lang/String;
    .end local v13    # "startTimeString":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 134
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v14, "BannerDataManager"

    const-string/jumbo v15, "getBannerItemsJsonObject exception"

    invoke-static {v14, v15, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_3
    return-object v1

    .line 118
    .restart local v1    # "avaliableBannerData":Lorg/json/JSONObject;
    .restart local v2    # "avaliableBannerItemArray":Lorg/json/JSONArray;
    .restart local v3    # "bannerDataJsonObject":Lorg/json/JSONObject;
    .restart local v5    # "bannerItemJsonArray":Lorg/json/JSONArray;
    .restart local v6    # "bannerItemJsonObject":Lorg/json/JSONObject;
    .restart local v8    # "endTimeString":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v11    # "length":I
    .restart local v12    # "picUrl":Ljava/lang/String;
    .restart local v13    # "startTimeString":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v14, "isPicDownload"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    .line 121
    :cond_6
    const-string/jumbo v14, "isExternalStorageAvailable"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v14, "picUrl"

    const-string/jumbo v15, "picUrl"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 130
    .end local v6    # "bannerItemJsonObject":Lorg/json/JSONObject;
    .end local v8    # "endTimeString":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "length":I
    .end local v12    # "picUrl":Ljava/lang/String;
    .end local v13    # "startTimeString":Ljava/lang/String;
    :cond_7
    const-string/jumbo v14, "banners"

    invoke-virtual {v1, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lvj;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lvj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p2, "oldBannerData":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    .local p3, "newBannerData":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 359
    :cond_0
    return-void

    .line 347
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 348
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvj;

    .line 349
    .local v1, "oldBannerItem":Lvj;
    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {v1}, Lvj;->b()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "oldPicUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 352
    invoke-virtual {p0, v2, p3}, Lve;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    invoke-static {}, Lvg;->a()Lvg;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lvg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v2    # "oldPicUrl":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lve$a;)V
    .locals 1
    .param p1, "mBannerResultCallback"    # Lve$a;

    .prologue
    .line 142
    iget-object v0, p0, Lve;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lve;->e:Ljava/util/List;

    .line 145
    :cond_0
    iget-object v0, p0, Lve;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "startTimeString"    # Ljava/lang/String;
    .param p2, "endTimeString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v6

    .line 201
    :cond_1
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 202
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 203
    .local v5, "startTimeCal":Ljava/util/Calendar;
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 206
    .local v1, "endTimeCal":Ljava/util/Calendar;
    invoke-virtual {v4, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 208
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 209
    .local v2, "now":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 210
    .local v3, "nowCal":Ljava/util/Calendar;
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 212
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 213
    const/4 v6, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "endTimeCal":Ljava/util/Calendar;
    .end local v2    # "now":Ljava/util/Date;
    .end local v3    # "nowCal":Ljava/util/Calendar;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "startTimeCal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/text/ParseException;
    const-string/jumbo v7, "BannerDataManager"

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .param p1, "picUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lvj;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "newBannerData":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    const/4 v3, 0x1

    .line 319
    if-nez p2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v3

    .line 323
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 324
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvj;

    .line 325
    .local v1, "newBannerItem":Lvj;
    if-eqz p2, :cond_2

    .line 326
    invoke-virtual {v1}, Lvj;->b()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "newPicUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 328
    const/4 v3, 0x0

    goto :goto_0

    .line 323
    .end local v2    # "newPicUrl":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lvj;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lvj;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "oldBannerData":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    .local p2, "newBannerData":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    const/4 v4, 0x1

    .line 289
    if-nez p2, :cond_0

    move v3, v4

    .line 312
    :goto_0
    return v3

    .line 293
    :cond_0
    if-nez p1, :cond_1

    move v3, v4

    .line 294
    goto :goto_0

    .line 298
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v3, v5, :cond_2

    move v3, v4

    .line 299
    goto :goto_0

    .line 303
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 304
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvj;

    invoke-virtual {v3}, Lvj;->a()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "oldBannerId":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvj;

    invoke-virtual {v3}, Lvj;->a()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "newBannerId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v3, v4

    .line 308
    goto :goto_0

    .line 303
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    .end local v1    # "newBannerId":Ljava/lang/String;
    .end local v2    # "oldBannerId":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)J
    .locals 4
    .param p1, "moduleId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x0

    .line 166
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-wide v0

    .line 169
    :cond_1
    iget-object v2, p0, Lve;->a:Landroid/content/Context;

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lve;->b:Lvd;

    invoke-virtual {v2, v3, v3, p1}, Lvd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 173
    .local v0, "requestId":J
    iget-object v2, p0, Lve;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bannerData"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string/jumbo v0, "BannerDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "key is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bannerData is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_extra_banner_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 9
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 363
    const-string/jumbo v6, "BannerDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResult | errorCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " requestType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 366
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "jsonResult":Ljava/lang/String;
    const-string/jumbo v6, "BannerDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "jsonResult is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Lvf;

    invoke-direct {v0}, Lvf;-><init>()V

    .line 371
    .local v0, "bannerDataParser":Lvf;
    invoke-virtual {v0, v3}, Lvf;->a(Ljava/lang/String;)Lvi;

    move-result-object v4

    .line 372
    .local v4, "mBannerDataBusinessResult":Lvi;
    if-nez v4, :cond_1

    .line 399
    .end local v0    # "bannerDataParser":Lvf;
    .end local v3    # "jsonResult":Ljava/lang/String;
    .end local v4    # "mBannerDataBusinessResult":Lvi;
    :cond_0
    :goto_0
    return-void

    .line 375
    .restart local v0    # "bannerDataParser":Lvf;
    .restart local v3    # "jsonResult":Ljava/lang/String;
    .restart local v4    # "mBannerDataBusinessResult":Lvi;
    :cond_1
    iget-object v6, p0, Lve;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 376
    .local v2, "channnelId":Ljava/lang/String;
    invoke-static {v2}, Lagv;->a(Ljava/lang/String;)V

    .line 378
    const/4 v6, 0x0

    invoke-direct {p0, v2, v6}, Lve;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 380
    .local v5, "oldBannerData":Ljava/util/List;, "Ljava/util/List<Lvj;>;"
    invoke-virtual {v4}, Lvi;->a()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lve;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 381
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_banner_closed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lil;->a(Ljava/lang/String;I)V

    .line 383
    invoke-virtual {v4}, Lvi;->a()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v2, v5, v6}, Lve;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 386
    invoke-virtual {p0, v2, v3}, Lve;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v6, p0, Lve;->e:Ljava/util/List;

    invoke-static {v6}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 390
    iget-object v6, p0, Lve;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lve$a;

    .line 391
    .local v1, "bannerResultCallback":Lve$a;
    if-eqz v1, :cond_2

    .line 392
    invoke-interface {v1, v2}, Lve$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 396
    .end local v1    # "bannerResultCallback":Lve$a;
    :cond_3
    iget-object v6, p0, Lve;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
