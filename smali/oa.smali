.class public final Loa;
.super Ljava/lang/Object;
.source "LBS.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loa$a;
    }
.end annotation


# static fields
.field private static volatile a:Loa;

.field private static b:Landroid/content/Context;


# instance fields
.field private c:Lcom/iflytek/common/lbs/XAddress;

.field private d:Lcom/iflytek/common/lbs/XAddress;

.field private e:Lnz;

.field private f:Loa$a;

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/iflytek/common/lbs/XAddress;

    invoke-direct {v0}, Lcom/iflytek/common/lbs/XAddress;-><init>()V

    iput-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Loa;->b:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Loa;->h()V

    .line 64
    iget-object v0, p0, Loa;->e:Lnz;

    invoke-virtual {v0, p0}, Lnz;->addObserver(Ljava/util/Observer;)V

    .line 65
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/iflytek/common/lbs/XAddress;
    .locals 22
    .param p0, "addressString"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 263
    const/4 v2, 0x0

    .line 302
    :goto_0
    return-object v2

    .line 266
    :cond_0
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    .local v11, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v20, "latitude"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 268
    .local v12, "latitude":Ljava/lang/String;
    const-string/jumbo v20, "longitude"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 269
    .local v14, "longitude":Ljava/lang/String;
    const-string/jumbo v20, "addressName"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "addressName":Ljava/lang/String;
    const-string/jumbo v20, "country"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "country":Ljava/lang/String;
    const-string/jumbo v20, "province"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 272
    .local v15, "province":Ljava/lang/String;
    const-string/jumbo v20, "area"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "area":Ljava/lang/String;
    const-string/jumbo v20, "city"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "city":Ljava/lang/String;
    const-string/jumbo v20, "street"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 275
    .local v17, "street":Ljava/lang/String;
    const-string/jumbo v20, "cityCode"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "cityCode":Ljava/lang/String;
    const-string/jumbo v20, "timeStamp"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 277
    .local v18, "timeStamp":J
    const-string/jumbo v20, "isFromCache"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 278
    .local v10, "isFromCache":Z
    const-string/jumbo v20, "locationFrom"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 279
    .local v13, "locateFrom":I
    const-string/jumbo v20, "errorCode"

    const/16 v21, 0xc8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 280
    .local v9, "errorCode":I
    const-string/jumbo v20, "reserve"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 282
    .local v16, "reserve":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/common/lbs/XAddress;

    invoke-direct {v2}, Lcom/iflytek/common/lbs/XAddress;-><init>()V

    .line 283
    .local v2, "address":Lcom/iflytek/common/lbs/XAddress;
    invoke-virtual {v2, v12}, Lcom/iflytek/common/lbs/XAddress;->setLatitude(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, v14}, Lcom/iflytek/common/lbs/XAddress;->setLongtitude(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2, v3}, Lcom/iflytek/common/lbs/XAddress;->setAddressName(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2, v7}, Lcom/iflytek/common/lbs/XAddress;->setCountry(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2, v15}, Lcom/iflytek/common/lbs/XAddress;->setProvince(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2, v4}, Lcom/iflytek/common/lbs/XAddress;->setArea(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2, v5}, Lcom/iflytek/common/lbs/XAddress;->setCity(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/iflytek/common/lbs/XAddress;->setStreet(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v2, v6}, Lcom/iflytek/common/lbs/XAddress;->setCityCode(Ljava/lang/String;)V

    .line 292
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setTimeStamp(J)V

    .line 293
    invoke-virtual {v2, v10}, Lcom/iflytek/common/lbs/XAddress;->setFromCache(Z)V

    .line 294
    invoke-virtual {v2, v13}, Lcom/iflytek/common/lbs/XAddress;->setLocationFrom(I)V

    .line 295
    invoke-virtual {v2, v9}, Lcom/iflytek/common/lbs/XAddress;->setErrorCode(I)V

    .line 296
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/iflytek/common/lbs/XAddress;->setReserve(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 299
    .end local v2    # "address":Lcom/iflytek/common/lbs/XAddress;
    .end local v3    # "addressName":Ljava/lang/String;
    .end local v4    # "area":Ljava/lang/String;
    .end local v5    # "city":Ljava/lang/String;
    .end local v6    # "cityCode":Ljava/lang/String;
    .end local v7    # "country":Ljava/lang/String;
    .end local v9    # "errorCode":I
    .end local v10    # "isFromCache":Z
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "latitude":Ljava/lang/String;
    .end local v13    # "locateFrom":I
    .end local v14    # "longitude":Ljava/lang/String;
    .end local v15    # "province":Ljava/lang/String;
    .end local v16    # "reserve":Ljava/lang/String;
    .end local v17    # "street":Ljava/lang/String;
    .end local v18    # "timeStamp":J
    :catch_0
    move-exception v8

    .line 300
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "XAddress"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static a()Loa;
    .locals 3

    .prologue
    .line 80
    sget-object v0, Loa;->a:Loa;

    if-nez v0, :cond_1

    .line 81
    const-class v1, Loa;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Loa;->a:Loa;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Loa;

    sget-object v2, Loa;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Loa;-><init>(Landroid/content/Context;)V

    sput-object v0, Loa;->a:Loa;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    sget-object v0, Loa;->a:Loa;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Loa;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sput-object p0, Loa;->b:Landroid/content/Context;

    .line 92
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/iflytek/common/lbs/XAddress;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "address"    # Lcom/iflytek/common/lbs/XAddress;

    .prologue
    const/4 v2, 0x0

    .line 235
    if-nez p1, :cond_0

    move-object v1, v2

    .line 258
    :goto_0
    return-object v1

    .line 238
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 240
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "latitude"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v3, "longitude"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string/jumbo v3, "addressName"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string/jumbo v3, "country"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string/jumbo v3, "province"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getProvince()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string/jumbo v3, "area"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string/jumbo v3, "city"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string/jumbo v3, "street"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getStreet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string/jumbo v3, "cityCode"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getCityCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string/jumbo v3, "timeStamp"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 250
    const-string/jumbo v3, "isFromCache"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->isFromCache()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 251
    const-string/jumbo v3, "locationFrom"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getLocationFrom()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    const-string/jumbo v3, "errorCode"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getErrorCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    const-string/jumbo v3, "reserve"

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getReserve()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "XAddress"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 258
    goto/16 :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lny;

    sget-object v1, Loa;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lny;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loa;->e:Lnz;

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/common/lbs/XAddress;)V
    .locals 4
    .param p1, "address"    # Lcom/iflytek/common/lbs/XAddress;

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setAddressName(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setArea(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setCity(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setCityCode(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setCountry(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setLatitude(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setLongtitude(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setProvince(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/lbs/XAddress;->setStreet(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {p1}, Lcom/iflytek/common/lbs/XAddress;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/common/lbs/XAddress;->setTimeStamp(J)V

    goto :goto_0
.end method

.method public a(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p0, Loa;->e:Lnz;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Loa;->e:Lnz;

    invoke-virtual {v0, p1}, Lnz;->addObserver(Ljava/util/Observer;)V

    .line 99
    :cond_0
    return-void
.end method

.method public a(Loa$a;)V
    .locals 0
    .param p1, "listener"    # Loa$a;

    .prologue
    .line 231
    iput-object p1, p0, Loa;->f:Loa$a;

    .line 232
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 7
    .param p1, "isNeedForceLocate"    # Z

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "LBS_MapLbs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "locating()| isNeedForceLocate= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 131
    .local v2, "now":J
    iget-wide v4, p0, Loa;->g:J

    sub-long v0, v2, v4

    .line 132
    .local v0, "detla":J
    if-nez p1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 133
    const-string/jumbo v4, "LBS_MapLbs"

    const-string/jumbo v5, "------------ repeat time < INTERVAL_TIME,not run"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v4, p0, Loa;->f:Loa$a;

    if-eqz v4, :cond_0

    .line 135
    iget-object v4, p0, Loa;->f:Loa$a;

    invoke-interface {v4}, Loa$a;->onLocatFinish()V

    .line 136
    const/4 v4, 0x0

    iput-object v4, p0, Loa;->f:Loa$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    :try_start_1
    iget-object v4, p0, Loa;->e:Lnz;

    invoke-virtual {v4}, Lnz;->c()Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Loa;->i:J

    .line 146
    :cond_2
    invoke-virtual {p0}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v4

    iput-object v4, p0, Loa;->c:Lcom/iflytek/common/lbs/XAddress;

    .line 147
    const-string/jumbo v4, "LBS_MapLbs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "------------>>> get address from permanent cache : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Loa;->c:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v4, Loa;->b:Landroid/content/Context;

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    const-string/jumbo v4, "LBS_MapLbs"

    const-string/jumbo v5, "---------------->>> Network is Connected!"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v4, p0, Loa;->e:Lnz;

    invoke-virtual {v4}, Lnz;->a()V

    .line 154
    iput-wide v2, p0, Loa;->g:J

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Loa;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "detla":J
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 157
    .restart local v0    # "detla":J
    .restart local v2    # "now":J
    :cond_3
    :try_start_2
    const-string/jumbo v4, "LBS_MapLbs"

    const-string/jumbo v5, "---------------->>> Network is not Connected!"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v4, p0, Loa;->e:Lnz;

    sget-object v5, Lcom/iflytek/common/lbs/XAddress;->ERROR_ADDRESS_NO_NETWORK:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {v4, v5}, Lnz;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Loa;->a(Z)V

    .line 114
    return-void
.end method

.method public b(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p0, Loa;->e:Lnz;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Loa;->e:Lnz;

    invoke-virtual {v0, p1}, Lnz;->deleteObserver(Ljava/util/Observer;)V

    .line 105
    :cond_0
    return-void
.end method

.method public c()Lcom/iflytek/common/lbs/XAddress;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    return-object v0
.end method

.method public d()Lcom/iflytek/common/lbs/XAddress;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 205
    const/4 v0, 0x1

    .line 206
    .local v0, "ret":Z
    iget-object v1, p0, Loa;->d:Lcom/iflytek/common/lbs/XAddress;

    iget-object v2, p0, Loa;->c:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {v1, v2}, Lcom/iflytek/common/lbs/XAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    :cond_0
    const-string/jumbo v1, "LBS_MapLbs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAddressChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Loa;->e:Lnz;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Loa;->e:Lnz;

    invoke-virtual {v0}, Lnz;->c()Z

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/iflytek/common/lbs/XAddress;
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Loa;->c:Lcom/iflytek/common/lbs/XAddress;

    if-nez v1, :cond_0

    .line 311
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.ADDRESS_INFO"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "addressString":Ljava/lang/String;
    invoke-static {v0}, Loa;->a(Ljava/lang/String;)Lcom/iflytek/common/lbs/XAddress;

    move-result-object v1

    iput-object v1, p0, Loa;->c:Lcom/iflytek/common/lbs/XAddress;

    .line 314
    .end local v0    # "addressString":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Loa;->c:Lcom/iflytek/common/lbs/XAddress;

    return-object v1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 16
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v8, v0, Loa;->i:J

    sub-long v4, v2, v8

    .line 321
    .local v4, "locateWasteTime":J
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/iflytek/common/lbs/XAddress;

    if-eqz v2, :cond_3

    move-object/from16 v14, p2

    .line 322
    check-cast v14, Lcom/iflytek/common/lbs/XAddress;

    .line 324
    .local v14, "address":Lcom/iflytek/common/lbs/XAddress;
    invoke-virtual {v14}, Lcom/iflytek/common/lbs/XAddress;->getErrorCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/iflytek/common/lbs/XAddress;->setTimeStamp(J)V

    .line 326
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/iflytek/common/lbs/XAddress;->setFromCache(Z)V

    .line 328
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Loa;->b(Lcom/iflytek/common/lbs/XAddress;)Lorg/json/JSONObject;

    move-result-object v15

    .line 329
    .local v15, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.ADDRESS_INFO"

    .line 330
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-virtual {v2, v3, v6}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/iflytek/common/lbs/XAddress;->setFromCache(Z)V

    .line 336
    move-object/from16 v0, p0

    iput-object v14, v0, Loa;->c:Lcom/iflytek/common/lbs/XAddress;

    .line 339
    sget-object v2, Loa;->b:Landroid/content/Context;

    invoke-static {v2}, Lxf;->a(Landroid/content/Context;)Lxf;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loa;->e:Lnz;

    .line 340
    invoke-virtual {v3}, Lnz;->d()I

    move-result v3

    .line 341
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-virtual {v2, v3, v4, v5, v6}, Lxf;->a(IJLjava/lang/String;)V

    .line 343
    const-string/jumbo v2, "LBS_MapLbs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "----------->>> save address success! mAddress = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Loa;->c:Lcom/iflytek/common/lbs/XAddress;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v14    # "address":Lcom/iflytek/common/lbs/XAddress;
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string/jumbo v2, "LBS_MapLbs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "----------Locat finish time="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Loa;->h:J

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Loa;->f:Loa$a;

    if-eqz v2, :cond_0

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Loa;->f:Loa$a;

    invoke-interface {v2}, Loa$a;->onLocatFinish()V

    .line 371
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Loa;->f:Loa$a;

    .line 373
    :cond_0
    return-void

    .line 347
    .restart local v14    # "address":Lcom/iflytek/common/lbs/XAddress;
    :cond_1
    const/4 v7, 0x0

    .line 348
    .local v7, "errorDesc":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {v14}, Lcom/iflytek/common/lbs/XAddress;->getErrorCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 349
    invoke-virtual {v14}, Lcom/iflytek/common/lbs/XAddress;->getReserve()Ljava/lang/String;

    move-result-object v7

    .line 352
    :cond_2
    sget-object v2, Loa;->b:Landroid/content/Context;

    invoke-static {v2}, Lxf;->a(Landroid/content/Context;)Lxf;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loa;->e:Lnz;

    .line 353
    invoke-virtual {v3}, Lnz;->d()I

    move-result v3

    .line 354
    invoke-virtual {v14}, Lcom/iflytek/common/lbs/XAddress;->getErrorCode()I

    move-result v6

    .line 352
    invoke-virtual/range {v2 .. v7}, Lxf;->a(IJILjava/lang/String;)V

    .line 356
    const-string/jumbo v2, "LBS_MapLbs"

    const-string/jumbo v3, "-------------->>>\u5b9a\u4f4d\u5931\u8d25 with errorcode"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    .end local v7    # "errorDesc":Ljava/lang/String;
    .end local v14    # "address":Lcom/iflytek/common/lbs/XAddress;
    :cond_3
    sget-object v2, Loa;->b:Landroid/content/Context;

    invoke-static {v2}, Lxf;->a(Landroid/content/Context;)Lxf;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Loa;->e:Lnz;

    .line 361
    invoke-virtual {v2}, Lnz;->d()I

    move-result v9

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-wide v10, v4

    .line 360
    invoke-virtual/range {v8 .. v13}, Lxf;->a(IJILjava/lang/String;)V

    .line 364
    const-string/jumbo v2, "LBS_MapLbs"

    const-string/jumbo v3, "-------------->>>\u5b9a\u4f4d\u5931\u8d25 with null value"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
