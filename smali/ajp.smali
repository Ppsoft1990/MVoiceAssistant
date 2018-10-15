.class public Lajp;
.super Ljava/lang/Object;
.source "CityWeatherResultHandler.java"


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "WeatherResultHandler"

    iput-object v0, p0, Lajp;->a:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "status"

    iput-object v0, p0, Lajp;->b:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "error_code"

    iput-object v0, p0, Lajp;->c:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "desc"

    iput-object v0, p0, Lajp;->d:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "content"

    iput-object v0, p0, Lajp;->e:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "weathers"

    iput-object v0, p0, Lajp;->f:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "province"

    iput-object v0, p0, Lajp;->g:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "city"

    iput-object v0, p0, Lajp;->h:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "area"

    iput-object v0, p0, Lajp;->i:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "forecasts"

    iput-object v0, p0, Lajp;->j:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "low"

    iput-object v0, p0, Lajp;->k:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "high"

    iput-object v0, p0, Lajp;->l:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "temp"

    iput-object v0, p0, Lajp;->m:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "condition"

    iput-object v0, p0, Lajp;->n:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "description"

    iput-object v0, p0, Lajp;->o:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "image_url"

    iput-object v0, p0, Lajp;->p:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "pm25"

    iput-object v0, p0, Lajp;->q:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "date"

    iput-object v0, p0, Lajp;->r:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "time"

    iput-object v0, p0, Lajp;->s:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "desc"

    iput-object v0, p0, Lajp;->t:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "num"

    iput-object v0, p0, Lajp;->u:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "last_update"

    iput-object v0, p0, Lajp;->v:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "datetime"

    iput-object v0, p0, Lajp;->w:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "interest_datetime"

    iput-object v0, p0, Lajp;->x:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "result"

    iput-object v0, p0, Lajp;->y:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "objects"

    iput-object v0, p0, Lajp;->z:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "current_condition"

    iput-object v0, p0, Lajp;->A:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "lunar"

    iput-object v0, p0, Lajp;->B:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "week"

    iput-object v0, p0, Lajp;->C:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "summary"

    iput-object v0, p0, Lajp;->D:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "longlat_pos"

    iput-object v0, p0, Lajp;->E:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lajp;->F:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/json/JSONArray;)Lajx;
    .locals 10
    .param p1, "weaArray"    # Lorg/json/JSONArray;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v6, v7

    .line 202
    :goto_0
    return-object v6

    .line 155
    :cond_1
    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 156
    .local v5, "weaObject":Lorg/json/JSONObject;
    if-nez v5, :cond_2

    move-object v6, v7

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    new-instance v6, Lajx;

    invoke-direct {v6}, Lajx;-><init>()V

    .line 162
    .local v6, "weather":Lajx;
    const-string/jumbo v8, "province"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "province":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 164
    const-string/jumbo v8, "\u7701"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 165
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 167
    :cond_3
    invoke-virtual {v6, v4}, Lajx;->b(Ljava/lang/String;)V

    .line 171
    :cond_4
    const-string/jumbo v8, "city"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "city":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    move-object v6, v7

    .line 173
    goto :goto_0

    .line 175
    :cond_6
    const-string/jumbo v8, "\u5e02"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_7
    invoke-virtual {v6, v1}, Lajx;->e(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v8, "area"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "area":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lajx;->a(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lajx;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lajx;->d(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v8, "forecasts"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 196
    .local v2, "forecastObject":Lorg/json/JSONArray;
    invoke-direct {p0, v2}, Lajp;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 197
    .local v3, "forecasts":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    if-nez v3, :cond_8

    move-object v6, v7

    .line 198
    goto :goto_0

    .line 201
    :cond_8
    invoke-virtual {v6, v3}, Lajx;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONObject;)Lajx;
    .locals 4
    .param p1, "contentObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 127
    if-nez p1, :cond_1

    move-object v1, v2

    .line 140
    :cond_0
    :goto_0
    return-object v1

    .line 130
    :cond_1
    const-string/jumbo v3, "objects"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 132
    .local v0, "weaArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object v1, v2

    .line 133
    goto :goto_0

    .line 135
    :cond_3
    invoke-direct {p0, v0}, Lajp;->a(Lorg/json/JSONArray;)Lajx;

    move-result-object v1

    .line 136
    .local v1, "weatherCard":Lajx;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 137
    goto :goto_0
.end method

.method private b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 25
    .param p1, "forecastArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lakc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v24

    if-nez v24, :cond_2

    .line 214
    :cond_0
    const/16 v22, 0x0

    .line 308
    :cond_1
    :goto_0
    return-object v22

    .line 217
    :cond_2
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v22, "weatherForecasts":Ljava/util/List;, "Ljava/util/List<Lakc;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v13, v0, :cond_1

    .line 219
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 220
    .local v10, "foObject":Lorg/json/JSONObject;
    if-nez v10, :cond_3

    .line 221
    const/16 v22, 0x0

    goto :goto_0

    .line 223
    :cond_3
    new-instance v11, Lakc;

    invoke-direct {v11}, Lakc;-><init>()V

    .line 226
    .local v11, "forecast":Lakc;
    if-nez v13, :cond_a

    .line 227
    const-string/jumbo v24, "current_condition"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 228
    .local v4, "currentConObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_7

    .line 229
    new-instance v5, Lajz;

    invoke-direct {v5}, Lajz;-><init>()V

    .line 230
    .local v5, "currentCondition":Lajz;
    const-string/jumbo v24, "description"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "desc1":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 232
    const/16 v22, 0x0

    goto :goto_0

    .line 234
    :cond_4
    invoke-virtual {v5, v9}, Lajz;->a(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v24, "image_url"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 237
    .local v14, "imageUrl":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 238
    :cond_5
    const/16 v22, 0x0

    goto :goto_0

    .line 240
    :cond_6
    invoke-virtual {v5, v14}, Lajz;->b(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v11, v5}, Lakc;->b(Lajz;)V

    .line 244
    .end local v5    # "currentCondition":Lajz;
    .end local v9    # "desc1":Ljava/lang/String;
    .end local v14    # "imageUrl":Ljava/lang/String;
    :cond_7
    const-string/jumbo v24, "temp"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 245
    .local v21, "temp":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 246
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 248
    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lakc;->a(Ljava/lang/String;)V

    .line 251
    .end local v4    # "currentConObject":Lorg/json/JSONObject;
    .end local v21    # "temp":Ljava/lang/String;
    :cond_a
    const-string/jumbo v24, "low"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 252
    .local v15, "low":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 253
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 255
    :cond_b
    invoke-virtual {v11, v15}, Lakc;->b(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v24, "high"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 257
    .local v12, "high":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 258
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 260
    :cond_c
    invoke-virtual {v11, v12}, Lakc;->c(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v24, "condition"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 263
    .local v2, "condObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_10

    .line 264
    new-instance v3, Lajz;

    invoke-direct {v3}, Lajz;-><init>()V

    .line 265
    .local v3, "condition":Lajz;
    const-string/jumbo v24, "description"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .restart local v9    # "desc1":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 267
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 269
    :cond_d
    invoke-virtual {v3, v9}, Lajz;->a(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v24, "image_url"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 271
    .restart local v14    # "imageUrl":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_e

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 272
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 274
    :cond_f
    invoke-virtual {v3, v14}, Lajz;->b(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v11, v3}, Lakc;->a(Lajz;)V

    .line 279
    .end local v3    # "condition":Lajz;
    .end local v9    # "desc1":Ljava/lang/String;
    .end local v14    # "imageUrl":Ljava/lang/String;
    :cond_10
    const-string/jumbo v24, "pm25"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 280
    .local v20, "pm25Object":Lorg/json/JSONObject;
    if-eqz v20, :cond_11

    .line 281
    new-instance v17, Lakb;

    invoke-direct/range {v17 .. v17}, Lakb;-><init>()V

    .line 282
    .local v17, "pm25":Lakb;
    const-string/jumbo v24, "desc"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 283
    .local v18, "pm25Desc":Ljava/lang/String;
    const-string/jumbo v24, "num"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 284
    .local v19, "pm25Num":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Lakb;->b(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lakb;->a(Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lakc;->a(Lakb;)V

    .line 289
    .end local v17    # "pm25":Lakb;
    .end local v18    # "pm25Desc":Ljava/lang/String;
    .end local v19    # "pm25Num":Ljava/lang/String;
    :cond_11
    const-string/jumbo v24, "datetime"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 290
    .local v8, "dateTimeObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_14

    .line 291
    new-instance v7, Laka;

    invoke-direct {v7}, Laka;-><init>()V

    .line 292
    .local v7, "dateTime":Laka;
    const-string/jumbo v24, "date"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, "date":Ljava/lang/String;
    const-string/jumbo v24, "lunar"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 294
    .local v16, "lunar":Ljava/lang/String;
    const-string/jumbo v24, "week"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 295
    .local v23, "week":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_12

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 296
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 297
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 299
    :cond_13
    invoke-virtual {v7, v6}, Laka;->a(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Laka;->c(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Laka;->b(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v11, v7}, Lakc;->a(Laka;)V

    .line 305
    .end local v6    # "date":Ljava/lang/String;
    .end local v7    # "dateTime":Laka;
    .end local v16    # "lunar":Ljava/lang/String;
    .end local v23    # "week":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lajy;
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v5, v7

    .line 84
    :goto_0
    return-object v5

    .line 66
    :cond_0
    const/4 v5, 0x0

    .line 69
    .local v5, "weatherResult":Lajy;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "error_code"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "errorCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "000000"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    move-object v5, v7

    .line 73
    goto :goto_0

    .line 75
    :cond_2
    new-instance v6, Lajy;

    invoke-direct {v6}, Lajy;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v5    # "weatherResult":Lajy;
    .local v6, "weatherResult":Lajy;
    :try_start_1
    invoke-virtual {v6, v2}, Lajy;->a(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v7, "result"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 79
    .local v4, "resultObject":Lorg/json/JSONObject;
    invoke-direct {p0, v4}, Lajp;->a(Lorg/json/JSONObject;)Lajx;

    move-result-object v0

    .line 80
    .local v0, "cardData":Lajx;
    invoke-virtual {v6, v0}, Lajy;->a(Lajx;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 83
    .end local v6    # "weatherResult":Lajy;
    .restart local v5    # "weatherResult":Lajy;
    goto :goto_0

    .line 81
    .end local v0    # "cardData":Lajx;
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "resultObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lorg/json/JSONException;
    :goto_1
    const-string/jumbo v7, "WeatherResultHandler"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 81
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "weatherResult":Lajy;
    .restart local v2    # "errorCode":Ljava/lang/String;
    .restart local v3    # "object":Lorg/json/JSONObject;
    .restart local v6    # "weatherResult":Lajy;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "weatherResult":Lajy;
    .restart local v5    # "weatherResult":Lajy;
    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lajy;
    .locals 11
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v7, v9

    .line 122
    :goto_0
    return-object v7

    .line 92
    :cond_0
    const/4 v7, 0x0

    .line 95
    .local v7, "weatherResult":Lajy;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v4, "object":Lorg/json/JSONObject;
    const-string/jumbo v10, "error_code"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "errorCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "000000"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    move-object v7, v9

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    new-instance v8, Lajy;

    invoke-direct {v8}, Lajy;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v7    # "weatherResult":Lajy;
    .local v8, "weatherResult":Lajy;
    :try_start_1
    invoke-virtual {v8, v1}, Lajy;->a(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v10, "result"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 104
    .local v5, "resultObject":Lorg/json/JSONObject;
    if-nez v5, :cond_3

    move-object v7, v9

    .line 105
    goto :goto_0

    .line 108
    :cond_3
    const-string/jumbo v10, "summary"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "forecastInfo":Ljava/lang/String;
    const-string/jumbo v10, "longlat_pos"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "lastPosition":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    move-object v7, v9

    .line 111
    goto :goto_0

    .line 114
    :cond_5
    new-instance v6, Lakd;

    invoke-direct {v6}, Lakd;-><init>()V

    .line 115
    .local v6, "weatherFuture":Lakd;
    invoke-virtual {v6, v3}, Lakd;->b(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v6, v2}, Lakd;->a(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v8, v6}, Lajy;->a(Lakd;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 121
    .end local v8    # "weatherResult":Lajy;
    .restart local v7    # "weatherResult":Lajy;
    goto :goto_0

    .line 119
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "forecastInfo":Ljava/lang/String;
    .end local v3    # "lastPosition":Ljava/lang/String;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "resultObject":Lorg/json/JSONObject;
    .end local v6    # "weatherFuture":Lakd;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const-string/jumbo v9, "WeatherResultHandler"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v7    # "weatherResult":Lajy;
    .restart local v1    # "errorCode":Ljava/lang/String;
    .restart local v4    # "object":Lorg/json/JSONObject;
    .restart local v8    # "weatherResult":Lajy;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "weatherResult":Lajy;
    .restart local v7    # "weatherResult":Lajy;
    goto :goto_1
.end method
