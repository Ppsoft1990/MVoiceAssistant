.class public final Lcom/iflytek/framework/business/speech/ResultPreHandler;
.super Ljava/lang/Object;
.source "ResultPreHandler.java"

# interfaces
.implements Lcom/iflytek/framework/business/interfaces/IResultPreHandler;


# static fields
.field private static final OTHER_LOCATE_FAIL_TIME:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "Business_ResultPreHandler"

.field private static final WEATHER_LOCATE_FAIL_TIME:J = 0x1b7740L


# instance fields
.field private mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

.field private mCallback:Lcom/iflytek/framework/business/interfaces/IResultCallback;

.field private mContext:Landroid/content/Context;

.field private mJudgementFilter:Lcom/iflytek/framework/business/speech/LocJudgementFilter;

.field private mLocalResultHandler:Lcom/iflytek/framework/business/speech/LocalResultHandler;

.field private mParticalContent:Ljava/lang/StringBuilder;

.field private mResultHandler:Ladt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mParticalContent:Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    .line 66
    new-instance v0, Ladt;

    invoke-direct {v0}, Ladt;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mResultHandler:Ladt;

    .line 67
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mLocalResultHandler:Lcom/iflytek/framework/business/speech/LocalResultHandler;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/iflytek/framework/business/speech/LocalResultHandler;

    invoke-direct {v0}, Lcom/iflytek/framework/business/speech/LocalResultHandler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mLocalResultHandler:Lcom/iflytek/framework/business/speech/LocalResultHandler;

    .line 70
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/speech/ResultPreHandler;)Lcom/iflytek/framework/business/interfaces/IResultCallback;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/speech/ResultPreHandler;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mCallback:Lcom/iflytek/framework/business/interfaces/IResultCallback;

    return-object v0
.end method

.method private getNameByFocus(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string/jumbo v0, "\u641c\u7d22"

    .line 213
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "contacts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const-string/jumbo v0, "\u8054\u7cfb\u4eba"

    .line 295
    :cond_0
    :goto_0
    const-string/jumbo v1, "Business_ResultPreHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNameByFocus end, focus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-object v0

    .line 215
    :cond_1
    const-string/jumbo v1, "telephone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    const-string/jumbo v0, "\u7535\u8bdd"

    goto :goto_0

    .line 217
    :cond_2
    const-string/jumbo v1, "message"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    const-string/jumbo v0, "\u77ed\u4fe1"

    goto :goto_0

    .line 219
    :cond_3
    const-string/jumbo v1, "schedule"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    const-string/jumbo v0, "\u63d0\u9192"

    goto :goto_0

    .line 221
    :cond_4
    const-string/jumbo v1, "translation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 222
    const-string/jumbo v0, "\u7ffb\u8bd1"

    goto :goto_0

    .line 223
    :cond_5
    const-string/jumbo v1, "smarthome"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 224
    const-string/jumbo v0, "\u667a\u80fd\u5bb6\u5c45"

    goto :goto_0

    .line 225
    :cond_6
    const-string/jumbo v1, "news"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 226
    const-string/jumbo v0, "\u65b0\u95fb"

    goto :goto_0

    .line 227
    :cond_7
    const-string/jumbo v1, "app"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 228
    const-string/jumbo v0, "\u5e94\u7528"

    goto :goto_0

    .line 229
    :cond_8
    const-string/jumbo v1, "website"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 230
    const-string/jumbo v0, "\u7f51\u7ad9"

    goto/16 :goto_0

    .line 231
    :cond_9
    const-string/jumbo v1, "map"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 232
    const-string/jumbo v0, "\u5730\u56fe"

    goto/16 :goto_0

    .line 233
    :cond_a
    const-string/jumbo v1, "stock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 234
    const-string/jumbo v0, "\u80a1\u7968"

    goto/16 :goto_0

    .line 235
    :cond_b
    const-string/jumbo v1, "weather"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 236
    const-string/jumbo v0, "\u5929\u6c14"

    goto/16 :goto_0

    .line 237
    :cond_c
    const-string/jumbo v1, "lbs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 238
    const-string/jumbo v0, "\u4f4d\u7f6e"

    goto/16 :goto_0

    .line 239
    :cond_d
    const-string/jumbo v1, "dialog"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 240
    const-string/jumbo v0, "\u4fe1\u606f\u95ee\u7b54"

    goto/16 :goto_0

    .line 241
    :cond_e
    const-string/jumbo v1, "other"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 242
    const-string/jumbo v0, "\u641c\u7d22"

    goto/16 :goto_0

    .line 243
    :cond_f
    const-string/jumbo v1, "restaurant"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 244
    const-string/jumbo v0, "\u7f8e\u98df"

    goto/16 :goto_0

    .line 245
    :cond_10
    const-string/jumbo v1, "flight"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 246
    const-string/jumbo v0, "\u822a\u73ed"

    goto/16 :goto_0

    .line 247
    :cond_11
    const-string/jumbo v1, "train"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 248
    const-string/jumbo v0, "\u706b\u8f66"

    goto/16 :goto_0

    .line 249
    :cond_12
    const-string/jumbo v1, "hotel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 250
    const-string/jumbo v0, "\u9152\u5e97"

    goto/16 :goto_0

    .line 251
    :cond_13
    const-string/jumbo v1, "picture"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 252
    const-string/jumbo v0, "\u56fe\u7247"

    goto/16 :goto_0

    .line 253
    :cond_14
    const-string/jumbo v1, "video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 254
    const-string/jumbo v0, "\u89c6\u9891"

    goto/16 :goto_0

    .line 255
    :cond_15
    const-string/jumbo v1, "websearch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 256
    const-string/jumbo v0, "\u641c\u7d22"

    goto/16 :goto_0

    .line 257
    :cond_16
    const-string/jumbo v1, "music"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 258
    const-string/jumbo v0, "\u97f3\u4e50"

    goto/16 :goto_0

    .line 259
    :cond_17
    const-string/jumbo v1, "lottery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 260
    const-string/jumbo v0, "\u5f69\u7968"

    goto/16 :goto_0

    .line 261
    :cond_18
    const-string/jumbo v1, "telephone_fee"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 262
    const-string/jumbo v0, "\u8bdd\u8d39"

    goto/16 :goto_0

    .line 263
    :cond_19
    const-string/jumbo v1, "telephone_credits"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 264
    const-string/jumbo v0, "\u79ef\u5206"

    goto/16 :goto_0

    .line 265
    :cond_1a
    const-string/jumbo v1, "data_transfer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 266
    const-string/jumbo v0, "\u6d41\u91cf"

    goto/16 :goto_0

    .line 267
    :cond_1b
    const-string/jumbo v1, "package_margin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 268
    const-string/jumbo v0, "\u5957\u9910"

    goto/16 :goto_0

    .line 269
    :cond_1c
    const-string/jumbo v1, "telephone_fee|telephone_credits|data_transfer|package_margin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 270
    const-string/jumbo v0, "\u79fb\u52a8\u4e1a\u52a1"

    goto/16 :goto_0

    .line 271
    :cond_1d
    const-string/jumbo v1, "driver_point"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 272
    const-string/jumbo v0, "\u9a7e\u9a76\u5458\u79ef\u5206"

    goto/16 :goto_0

    .line 273
    :cond_1e
    const-string/jumbo v1, "driver_point"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 274
    const-string/jumbo v0, "\u9a7e\u9a76\u5458\u79ef\u5206"

    goto/16 :goto_0

    .line 275
    :cond_1f
    const-string/jumbo v1, "motor_violation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 276
    const-string/jumbo v0, "\u8f66\u8f86\u8fdd\u7ae0"

    goto/16 :goto_0

    .line 277
    :cond_20
    const-string/jumbo v1, "v_cinema"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 278
    const-string/jumbo v0, "\u9662\u7ebf\u70ed\u6620"

    goto/16 :goto_0

    .line 279
    :cond_21
    const-string/jumbo v1, "cinemas"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 280
    const-string/jumbo v0, "\u9662\u7ebf\u70ed\u6620"

    goto/16 :goto_0

    .line 281
    :cond_22
    const-string/jumbo v1, "v_cinema|cinemas"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 282
    const-string/jumbo v0, "\u9662\u7ebf\u70ed\u6620"

    goto/16 :goto_0

    .line 283
    :cond_23
    const-string/jumbo v1, "email"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 284
    const-string/jumbo v0, "\u90ae\u7bb1"

    goto/16 :goto_0

    .line 285
    :cond_24
    const-string/jumbo v1, "novel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 286
    const-string/jumbo v0, "\u5c0f\u8bf4"

    goto/16 :goto_0

    .line 287
    :cond_25
    const-string/jumbo v1, "local_search"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 288
    const-string/jumbo v0, "\u5468\u8fb9"

    goto/16 :goto_0

    .line 289
    :cond_26
    const-string/jumbo v1, "microblog"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 290
    const-string/jumbo v0, "\u5fae\u535a"

    goto/16 :goto_0

    .line 291
    :cond_27
    const-string/jumbo v1, "humming"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const-string/jumbo v0, "\u54fc\u5531\u641c\u7d22"

    goto/16 :goto_0
.end method

.method private isNeedLocate(Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 12
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    .line 340
    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mJudgementFilter:Lcom/iflytek/framework/business/speech/LocJudgementFilter;

    if-nez v6, :cond_0

    .line 341
    new-instance v6, Lcom/iflytek/framework/business/speech/LocJudgementFilter;

    invoke-direct {v6}, Lcom/iflytek/framework/business/speech/LocJudgementFilter;-><init>()V

    iput-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mJudgementFilter:Lcom/iflytek/framework/business/speech/LocJudgementFilter;

    .line 348
    :cond_0
    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mJudgementFilter:Lcom/iflytek/framework/business/speech/LocJudgementFilter;

    invoke-virtual {v6, p1}, Lcom/iflytek/framework/business/speech/LocJudgementFilter;->isLocJudgement(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mJudgementFilter:Lcom/iflytek/framework/business/speech/LocJudgementFilter;

    .line 349
    invoke-virtual {v6, p1}, Lcom/iflytek/framework/business/speech/LocJudgementFilter;->isNeedLocate(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 352
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 353
    .local v0, "currentTime":J
    invoke-static {}, Loa;->a()Loa;

    move-result-object v6

    invoke-virtual {v6}, Loa;->c()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v4

    .line 354
    .local v4, "xAddress":Lcom/iflytek/common/lbs/XAddress;
    if-nez v4, :cond_2

    .line 355
    const-string/jumbo v6, "Business_ResultPreHandler"

    const-string/jumbo v7, "xAddress is null"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v0    # "currentTime":J
    .end local v4    # "xAddress":Lcom/iflytek/common/lbs/XAddress;
    :goto_0
    return v5

    .line 358
    .restart local v0    # "currentTime":J
    .restart local v4    # "xAddress":Lcom/iflytek/common/lbs/XAddress;
    :cond_2
    invoke-virtual {v4}, Lcom/iflytek/common/lbs/XAddress;->getTimeStamp()J

    move-result-wide v2

    .line 359
    .local v2, "locationTime":J
    iget-object v6, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v7, "weather"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 360
    sub-long v6, v0, v2

    const-wide/32 v8, 0x1b7740

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    sub-long v6, v0, v2

    cmp-long v6, v6, v10

    if-gtz v6, :cond_6

    .line 362
    :cond_3
    const-string/jumbo v6, "Business_ResultPreHandler"

    const-string/jumbo v7, "Location is too old"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_4
    sub-long v6, v0, v2

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    sub-long v6, v0, v2

    cmp-long v6, v6, v10

    if-gtz v6, :cond_6

    .line 368
    :cond_5
    const-string/jumbo v6, "Business_ResultPreHandler"

    const-string/jumbo v7, "Location is too old"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    .end local v0    # "currentTime":J
    .end local v2    # "locationTime":J
    .end local v4    # "xAddress":Lcom/iflytek/common/lbs/XAddress;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private preHandleLastResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 306
    if-nez p2, :cond_1

    .line 307
    const-string/jumbo v1, "Business_ResultPreHandler"

    const-string/jumbo v2, "preHandleLastResult result is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-direct {p0, p2}, Lcom/iflytek/framework/business/speech/ResultPreHandler;->isNeedLocate(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mCallback:Lcom/iflytek/framework/business/interfaces/IResultCallback;

    if-eqz v1, :cond_0

    .line 314
    invoke-static {}, Lhl;->k()I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 315
    invoke-static {}, Lagv;->f()Lahd;

    move-result-object v0

    .line 316
    .local v0, "lbsHelper":Lahd;
    if-eqz v0, :cond_0

    .line 317
    new-instance v1, Lcom/iflytek/framework/business/speech/ResultPreHandler$1;

    invoke-direct {v1, p0, p2}, Lcom/iflytek/framework/business/speech/ResultPreHandler$1;-><init>(Lcom/iflytek/framework/business/speech/ResultPreHandler;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    invoke-virtual {v0, v1}, Lahd;->a(Lahd$a;)Lahd;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Lahd;->h()V

    goto :goto_0

    .line 325
    .end local v0    # "lbsHelper":Lahd;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mCallback:Lcom/iflytek/framework/business/interfaces/IResultCallback;

    invoke-interface {v1, p2}, Lcom/iflytek/framework/business/interfaces/IResultCallback;->needShowLocate(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/framework/business/speech/ResultPreHandler;->afterLocateSearchResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto :goto_0
.end method

.method private saveSpeechResult(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 3
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 409
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v1, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v2, "dialog"

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getXmlDoc()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "xml":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "<topic>errorword_guide</topic>"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const-string/jumbo v1, "Business_ResultPreHandler"

    const-string/jumbo v2, "saveSpeechResult | it errorword_guide"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchFocusAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 427
    if-eqz p1, :cond_5

    .line 428
    const-string/jumbo v0, "va_cqa_ovs_mapX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const-string/jumbo v0, "map"

    .line 442
    :goto_0
    return-object v0

    .line 430
    :cond_0
    const-string/jumbo v0, "va_cqa_ovs_restaurantX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    const-string/jumbo v0, "restaurant"

    goto :goto_0

    .line 432
    :cond_1
    const-string/jumbo v0, "va_cqa_ovs_lbsX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    const-string/jumbo v0, "local_search"

    goto :goto_0

    .line 434
    :cond_2
    const-string/jumbo v0, "va_cqa_ovs_hotelX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    const-string/jumbo v0, "hotel"

    goto :goto_0

    .line 436
    :cond_3
    const-string/jumbo v0, "va_cqa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    const-string/jumbo v0, "dialogva_cqa"

    goto :goto_0

    .line 438
    :cond_4
    const-string/jumbo v0, "chat_\u7b11\u8bdd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 439
    const-string/jumbo v0, "dialogjoke"

    goto :goto_0

    .line 442
    :cond_5
    const-string/jumbo v0, "dialog"

    goto :goto_0
.end method


# virtual methods
.method public afterLocateSearchResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 100
    iget-object v6, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    const-string/jumbo v6, "Business_ResultPreHandler"

    const-string/jumbo v7, "preHandleLastResult focus is empty"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 107
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mContext:Landroid/content/Context;

    .line 111
    :cond_1
    if-eqz p2, :cond_4

    .line 112
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v6

    if-ne v6, v10, :cond_4

    .line 113
    const-string/jumbo v6, "Business_ResultPreHandler"

    const-string/jumbo v7, "afterLocateSearchResult record input search cpacode"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 116
    .local v1, "backFocus":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lxn;->a(Landroid/content/Context;)Lxn;

    move-result-object v6

    iget-object v7, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    .line 117
    invoke-virtual {v6, v7, v1}, Lxn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "backAction":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 119
    const-string/jumbo v0, ""

    .line 122
    :cond_2
    move-object v2, v1

    .line 124
    .local v2, "focusAction":Ljava/lang/String;
    const-string/jumbo v6, "microblog"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 125
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getJsonStr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    :cond_3
    :goto_1
    const-string/jumbo v6, "evaluate"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 147
    const-string/jumbo v6, "Business_ResultPreHandler"

    const-string/jumbo v7, "logResult evaluate not save to cmcc."

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v0    # "backAction":Ljava/lang/String;
    .end local v1    # "backFocus":Ljava/lang/String;
    .end local v2    # "focusAction":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mLocalResultHandler:Lcom/iflytek/framework/business/speech/LocalResultHandler;

    iget-object v8, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {v7, v8, p2}, Lcom/iflytek/framework/business/speech/LocalResultHandler;->transPreResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v7

    .line 156
    invoke-static {v6, v7}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->getTransferResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v3

    .line 159
    .local v3, "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-eqz v3, :cond_5

    .line 160
    move-object p2, v3

    .line 164
    :cond_5
    if-eqz p2, :cond_6

    const-string/jumbo v6, "schedule"

    iget-object v7, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 165
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v6

    invoke-virtual {v6}, Lauy;->b()V

    .line 169
    :cond_6
    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    iget-object v7, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 170
    invoke-interface {v6, v7}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->judgeFocusExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 171
    const-string/jumbo v6, "transfer_other"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/iflytek/framework/business/speech/TransferResultFactory;->transfer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v5

    .line 174
    .local v5, "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-eqz v5, :cond_7

    .line 175
    move-object p2, v5

    .line 180
    .end local v5    # "transferResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_7
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v6

    invoke-virtual {p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->c(Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    iget-object v7, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 184
    invoke-interface {v6, v7}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 185
    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    iget-object v7, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7, p2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->handleSpeechResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 205
    :goto_3
    invoke-direct {p0, p2}, Lcom/iflytek/framework/business/speech/ResultPreHandler;->saveSpeechResult(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto/16 :goto_0

    .line 129
    .end local v3    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    .restart local v0    # "backAction":Ljava/lang/String;
    .restart local v1    # "backFocus":Ljava/lang/String;
    .restart local v2    # "focusAction":Ljava/lang/String;
    :cond_8
    const-string/jumbo v6, "message"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 130
    const-string/jumbo v6, "sms"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 133
    :cond_9
    const-string/jumbo v6, "contacts"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 134
    const-string/jumbo v6, "send"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "create"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 135
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 137
    :cond_b
    const-string/jumbo v6, "app"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 138
    const-string/jumbo v6, "launch"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "search"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 139
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 141
    :cond_d
    const-string/jumbo v6, "dialog"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 143
    invoke-direct {p0, v0}, Lcom/iflytek/framework/business/speech/ResultPreHandler;->switchFocusAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 149
    :cond_e
    invoke-static {p1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v6

    const-string/jumbo v7, "LX_100009"

    .line 150
    invoke-static {v2, v7}, Lwj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    invoke-virtual {v6, v7}, Lwz;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 188
    .end local v0    # "backAction":Ljava/lang/String;
    .end local v1    # "backFocus":Ljava/lang/String;
    .end local v2    # "focusAction":Ljava/lang/String;
    .restart local v3    # "newResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_f
    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mResultHandler:Ladt;

    iget-object v7, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ladt;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 189
    iget-object v6, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mResultHandler:Ladt;

    invoke-virtual {v6, p2}, Ladt;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto/16 :goto_3

    .line 193
    :cond_10
    iget-object v6, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/iflytek/framework/business/speech/ResultPreHandler;->getNameByFocus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "titleName":Ljava/lang/String;
    iget-object v6, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    const-string/jumbo v7, "dialog"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 195
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getXmlDoc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 197
    const-string/jumbo v6, "Business_ResultPreHandler"

    const-string/jumbo v7, "errorword_guide, title change"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string/jumbo v4, "\u793a\u4f8b\u5f15\u5bfc"

    .line 202
    :cond_11
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, p2, v9, v7}, Lqh;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;ZLjava/lang/String;)V

    goto/16 :goto_3
.end method

.method public getPreHandleResult(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)",
            "Lcom/iflytek/yd/speech/ViaAsrResult;"
        }
    .end annotation

    .prologue
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    const/4 v0, 0x0

    .line 382
    .local v0, "localResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 383
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    check-cast v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 384
    .restart local v1    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 385
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 386
    .local v2, "viaAsrResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getEngine()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 387
    move-object v0, v2

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getEngine()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 389
    move-object v1, v2

    goto :goto_0

    .line 393
    .end local v2    # "viaAsrResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_2
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    check-cast v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 396
    .restart local v1    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_3
    iget-object v3, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mLocalResultHandler:Lcom/iflytek/framework/business/speech/LocalResultHandler;

    invoke-virtual {v3, p1, v1, v0}, Lcom/iflytek/framework/business/speech/LocalResultHandler;->localPreHandle(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 398
    move-object v1, v0

    .line 401
    :cond_4
    const-string/jumbo v3, "Business_ResultPreHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preHandle focus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string/jumbo v3, "Business_ResultPreHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preHandle xmlDoc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_5
    return-object v1
.end method

.method public preHandleLastResult(Landroid/content/Context;Ljava/util/ArrayList;Lcom/iflytek/framework/business/interfaces/IResultCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/iflytek/framework/business/interfaces/IResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;",
            "Lcom/iflytek/framework/business/interfaces/IResultCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    .line 86
    iput-object p1, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mContext:Landroid/content/Context;

    .line 88
    :cond_0
    iput-object p3, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mCallback:Lcom/iflytek/framework/business/interfaces/IResultCallback;

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/framework/business/speech/ResultPreHandler;->getPreHandleResult(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    .line 90
    .local v0, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mParticalContent:Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mParticalContent:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "smsContent":Ljava/lang/String;
    iput-object v1, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mParticalContent:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mParticalContent:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/iflytek/framework/business/speech/ResultPreHandler;->preHandleLastResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 95
    return-void
.end method

.method public preHandleParticalResult(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 76
    .local v0, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    const-string/jumbo v1, "Business_ResultPreHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "particalHandle content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/iflytek/framework/business/speech/ResultPreHandler;->mParticalContent:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .end local v0    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    return-void
.end method
