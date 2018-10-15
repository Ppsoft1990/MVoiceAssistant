.class public Lams;
.super Ljava/lang/Object;
.source "BookBizModel.java"


# instance fields
.field private a:Lamr;

.field private b:Lamr;

.field private c:Lamr;

.field private d:Lamr;

.field private e:Lamr;

.field private f:Lamr;

.field private g:Lamy;

.field private h:Ljava/lang/Object;

.field private i:Lyn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lamy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lamy;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lams;->h:Ljava/lang/Object;

    .line 126
    new-instance v0, Lams$1;

    invoke-direct {v0, p0}, Lams$1;-><init>(Lams;)V

    iput-object v0, p0, Lams;->i:Lyn;

    .line 44
    iput-object p2, p0, Lams;->g:Lamy;

    .line 45
    new-instance v0, Lamr;

    const-string/jumbo v1, "1004"

    iget-object v2, p0, Lams;->i:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lamr;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lams;->a:Lamr;

    .line 46
    new-instance v0, Lamr;

    const-string/jumbo v1, "1003"

    iget-object v2, p0, Lams;->i:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lamr;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lams;->b:Lamr;

    .line 47
    new-instance v0, Lamr;

    const-string/jumbo v1, "1002"

    iget-object v2, p0, Lams;->i:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lamr;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lams;->c:Lamr;

    .line 48
    new-instance v0, Lamr;

    const-string/jumbo v1, "1007"

    iget-object v2, p0, Lams;->i:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lamr;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lams;->d:Lamr;

    .line 49
    new-instance v0, Lamr;

    const-string/jumbo v1, "1012"

    iget-object v2, p0, Lams;->i:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lamr;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lams;->e:Lamr;

    .line 50
    new-instance v0, Lamr;

    const-string/jumbo v1, "1024"

    iget-object v2, p0, Lams;->i:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lamr;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lams;->f:Lamr;

    .line 51
    return-void
.end method

.method static synthetic a(Lams;I)I
    .locals 1
    .param p0, "x0"    # Lams;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lams;->c(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lams;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lams;

    .prologue
    .line 33
    iget-object v0, p0, Lams;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lams;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lams;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lams;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    .line 235
    const-string/jumbo v4, "BookBizModel"

    const-string/jumbo v5, "handleOrderInfoResult"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string/jumbo v4, "000000"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "success"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 237
    const-string/jumbo v4, "BookBizModel"

    const-string/jumbo v5, "handleOrderInfoResult success"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string/jumbo v4, "result"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 240
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 241
    const/16 v4, 0x3f5

    invoke-virtual {p0, v4}, Lams;->b(I)V

    .line 266
    .end local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 244
    .restart local v2    # "result":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v4, "detail"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "detail":Ljava/lang/String;
    const-string/jumbo v4, "retcode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "retCode":Ljava/lang/String;
    const-string/jumbo v4, "0200"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    invoke-static {v1}, Lamt;->a(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v0

    .line 250
    .local v0, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    iget-object v4, p0, Lams;->g:Lamy;

    if-eqz v4, :cond_0

    .line 251
    iget-object v4, p0, Lams;->g:Lamy;

    invoke-interface {v4, v0}, Lamy;->onChapterInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    .line 252
    iget-object v4, p0, Lams;->g:Lamy;

    invoke-interface {v4, v3}, Lamy;->onBuyResult(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v0    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    :cond_2
    const-string/jumbo v4, "0201"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lams;->g:Lamy;

    invoke-interface {v4, v3}, Lamy;->onBuyResult(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v1    # "detail":Ljava/lang/String;
    .end local v2    # "result":Lorg/json/JSONObject;
    .end local v3    # "retCode":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "010002"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "fail"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    const-string/jumbo v4, "BookBizModel"

    const-string/jumbo v5, "handleorderInfo unlogin"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v4, p0, Lams;->g:Lamy;

    if-eqz v4, :cond_0

    .line 262
    iget-object v4, p0, Lams;->g:Lamy;

    invoke-interface {v4}, Lamy;->onUnLoginResult()V

    goto :goto_0
.end method

.method static synthetic b(Lams;)Lamy;
    .locals 1
    .param p0, "x0"    # Lams;

    .prologue
    .line 33
    iget-object v0, p0, Lams;->g:Lamy;

    return-object v0
.end method

.method static synthetic b(Lams;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lams;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lams;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    const/16 v7, 0x3f0

    .line 276
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v6, "handleChapterInfoResult"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "success"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 278
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v6, "handleChapterInfoResult success"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string/jumbo v5, "result"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 281
    .local v3, "result":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 282
    invoke-virtual {p0, v7}, Lams;->b(I)V

    .line 335
    .end local v3    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 286
    .restart local v3    # "result":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v5, "detail"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "detail":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    invoke-virtual {p0, v7}, Lams;->b(I)V

    goto :goto_0

    .line 292
    :cond_2
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v6, "handleChapterInfoResult detail is not null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string/jumbo v5, "retcode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "retCode":Ljava/lang/String;
    const-string/jumbo v5, "0100"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 297
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v6, "handleChapterInfoResult get chapterInfo,parse it"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {v2}, Lamt;->a(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    move-result-object v0

    .line 300
    .local v0, "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    iget-object v5, p0, Lams;->g:Lamy;

    if-eqz v5, :cond_5

    .line 301
    iget-object v5, p0, Lams;->g:Lamy;

    invoke-interface {v5, v0}, Lamy;->onChapterInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)V

    goto :goto_0

    .line 305
    .end local v0    # "chapterAudio":Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
    :cond_3
    const-string/jumbo v5, "0101"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 306
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v6, "handleChapterInfoResult get pay info, parse it"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {v2}, Lamt;->b(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v1

    .line 310
    .local v1, "chargeInfo":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    iget-object v5, p0, Lams;->g:Lamy;

    if-eqz v5, :cond_5

    .line 311
    iget-object v5, p0, Lams;->g:Lamy;

    invoke-interface {v5, v1}, Lamy;->onChargeInfoResult(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    goto :goto_0

    .line 315
    .end local v1    # "chargeInfo":Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    :cond_4
    invoke-virtual {p0, v7}, Lams;->b(I)V

    goto :goto_0

    .line 318
    :cond_5
    invoke-virtual {p0, v7}, Lams;->b(I)V

    goto :goto_0

    .line 321
    .end local v2    # "detail":Ljava/lang/String;
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "retCode":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "010001"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "fail"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 322
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v6, "handleChapterInfoResult user unlogin"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v5, p0, Lams;->g:Lamy;

    if-eqz v5, :cond_7

    .line 326
    iget-object v5, p0, Lams;->g:Lamy;

    invoke-interface {v5}, Lamy;->onUnLoginResult()V

    .line 328
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    invoke-virtual {p0, v7}, Lams;->b(I)V

    goto/16 :goto_0

    .line 334
    :cond_7
    invoke-virtual {p0, v7}, Lams;->b(I)V

    goto/16 :goto_0
.end method

.method private c(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 209
    const/16 v0, 0x3e9

    .line 211
    .local v0, "errorCode":I
    sparse-switch p1, :sswitch_data_0

    .line 231
    :goto_0
    return v0

    .line 213
    :sswitch_0
    const/16 v0, 0x3f0

    .line 214
    goto :goto_0

    .line 216
    :sswitch_1
    const/16 v0, 0x3f1

    .line 217
    goto :goto_0

    .line 219
    :sswitch_2
    const/16 v0, 0x3f2

    .line 220
    goto :goto_0

    .line 222
    :sswitch_3
    const/16 v0, 0x3f2

    .line 223
    goto :goto_0

    .line 225
    :sswitch_4
    const/16 v0, 0x3f5

    .line 226
    goto :goto_0

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_1
        0x6b -> :sswitch_0
        0x6c -> :sswitch_2
        0x75 -> :sswitch_4
        0x76 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic c(Lams;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lams;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lams;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    const/16 v5, 0x3f1

    .line 345
    const-string/jumbo v3, "BookBizModel"

    const-string/jumbo v4, "handleChapterListResult"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string/jumbo v3, "000000"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "success"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    const-string/jumbo v3, "BookBizModel"

    const-string/jumbo v4, "handleChapterListResult success"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string/jumbo v3, "result"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 350
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 351
    invoke-virtual {p0, v5}, Lams;->b(I)V

    .line 381
    .end local v2    # "result":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 354
    .restart local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v3, "chapterlist"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 356
    .local v0, "chapterList":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 357
    invoke-virtual {p0, v5}, Lams;->b(I)V

    goto :goto_0

    .line 360
    :cond_1
    const-string/jumbo v3, "BookBizModel"

    const-string/jumbo v4, "handleChapterInfoResult chapterList is not null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string/jumbo v3, "BookBizModel"

    const-string/jumbo v4, "handleChapterInfoResult get chapterInfo,parse it"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {v0}, Lamt;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 366
    .local v1, "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    iget-object v3, p0, Lams;->g:Lamy;

    if-eqz v3, :cond_3

    .line 367
    iget-object v3, p0, Lams;->g:Lamy;

    invoke-interface {v3, v1}, Lamy;->onChapterListResult(Ljava/util/List;)V

    goto :goto_0

    .line 371
    .end local v0    # "chapterList":Lorg/json/JSONArray;
    .end local v1    # "chapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    .end local v2    # "result":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v3, "010302"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "fail"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 372
    const-string/jumbo v3, "BookBizModel"

    const-string/jumbo v4, "handleChapterInfoResult no more chapter list"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v3, p0, Lams;->g:Lamy;

    if-eqz v3, :cond_3

    .line 374
    iget-object v3, p0, Lams;->g:Lamy;

    invoke-interface {v3}, Lamy;->onNoMoreChapterResult()V

    .line 380
    :cond_3
    :goto_1
    invoke-virtual {p0, v5}, Lams;->b(I)V

    goto :goto_0

    .line 377
    :cond_4
    const-string/jumbo v3, "010301"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "fail"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 378
    const-string/jumbo v3, "BookBizModel"

    const-string/jumbo v4, "handleChapterInfoResult get list fail"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic d(Lams;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lams;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lams;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    const/16 v5, 0x3f2

    .line 391
    const-string/jumbo v3, "000000"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "success"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    const-string/jumbo v3, "BookBizModel"

    const-string/jumbo v4, "handleContentInfoResult success"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string/jumbo v3, "result"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 395
    .local v2, "result":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 396
    invoke-virtual {p0, v5}, Lams;->b(I)V

    .line 420
    .end local v2    # "result":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 399
    .restart local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v3, "contentinfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 401
    .local v1, "contentInfo":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 402
    invoke-virtual {p0, v5}, Lams;->b(I)V

    goto :goto_0

    .line 405
    :cond_1
    const-string/jumbo v3, "BookBizModel"

    const-string/jumbo v4, "handleContentInfoResult contentInfo is not null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string/jumbo v3, "BookBizModel"

    const-string/jumbo v4, "handleContentInfoResult get contentInfo,parse it"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {v1}, Lamt;->b(Lorg/json/JSONObject;)Lamm;

    move-result-object v0

    .line 411
    .local v0, "bookInfo":Lamm;
    iget-object v3, p0, Lams;->g:Lamy;

    if-eqz v3, :cond_3

    .line 412
    iget-object v3, p0, Lams;->g:Lamy;

    invoke-interface {v3, v0}, Lamy;->onContentInfoResult(Lamm;)V

    goto :goto_0

    .line 416
    .end local v0    # "bookInfo":Lamm;
    .end local v1    # "contentInfo":Lorg/json/JSONObject;
    .end local v2    # "result":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v3, "010201"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "fail"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 417
    const-string/jumbo v3, "BookBizModel"

    const-string/jumbo v4, "handleContentInfoResult get content info fail"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_3
    invoke-virtual {p0, v5}, Lams;->b(I)V

    goto :goto_0
.end method

.method static synthetic e(Lams;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lams;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lams;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    .line 443
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "success"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v6, "handleContentInfoResult success"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string/jumbo v5, "result"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 446
    .local v3, "result":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 447
    const-string/jumbo v5, "descriptionlist"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 448
    .local v2, "list":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 449
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 450
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 451
    const-string/jumbo v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v5, "value"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "BookBizModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string/jumbo v5, "BookBizModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 456
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "listenbook_ending_audition_url"

    .line 457
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    iget-object v5, p0, Lams;->g:Lamy;

    if-eqz v5, :cond_0

    .line 459
    iget-object v5, p0, Lams;->g:Lamy;

    invoke-interface {v5, v4}, Lamy;->onTipVoiceResult(Ljava/lang/String;)V

    .line 466
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "list":Lorg/json/JSONArray;
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lams;->g:Lamy;

    if-nez v1, :cond_0

    .line 100
    const-wide/16 v2, -0x1

    .line 105
    :goto_0
    return-wide v2

    .line 103
    :cond_0
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v1

    invoke-virtual {v1}, Lamk;->i()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "contentId":Ljava/lang/String;
    iget-object v1, p0, Lams;->c:Lamr;

    const/16 v2, 0x32

    invoke-virtual {v1, v0, v2}, Lamr;->a(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public a(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 84
    iget-object v1, p0, Lams;->g:Lamy;

    if-nez v1, :cond_0

    .line 85
    const-wide/16 v2, -0x1

    .line 90
    :goto_0
    return-wide v2

    .line 88
    :cond_0
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v1

    invoke-virtual {v1}, Lamk;->i()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "contentId":Ljava/lang/String;
    iget-object v1, p0, Lams;->b:Lamr;

    const/16 v2, 0x32

    invoke-virtual {v1, v0, p1, v2}, Lamr;->a(Ljava/lang/String;II)J

    move-result-wide v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)J
    .locals 5
    .param p1, "chapterId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 59
    const-string/jumbo v1, "BookBizModel"

    const-string/jumbo v4, "requestChapterInfo "

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lams;->g:Lamy;

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-wide v2

    .line 65
    :cond_0
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v1

    invoke-virtual {v1}, Lamk;->i()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "contentId":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v1

    invoke-virtual {v1}, Lamk;->h()Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    :cond_2
    const-string/jumbo v1, "BookBizModel"

    const-string/jumbo v4, "requestChapterInfo param is null"

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_3
    iget-object v1, p0, Lams;->a:Lamr;

    invoke-virtual {v1, v0, p1}, Lamr;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 8
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "chapterId"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .param p4, "rate"    # Ljava/lang/String;
    .param p5, "startTime"    # Ljava/lang/String;
    .param p6, "endTime"    # Ljava/lang/String;
    .param p7, "isOnline"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lams;->g:Lamy;

    if-nez v0, :cond_0

    .line 121
    const-wide/16 v0, -0x1

    .line 123
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lams;->e:Lamr;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lamr;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "chargeMode"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "contentId"    # Ljava/lang/String;
    .param p4, "chapterId"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lams;->g:Lamy;

    if-nez v0, :cond_0

    .line 110
    const-wide/16 v0, -0x1

    .line 114
    :goto_0
    return-wide v0

    .line 113
    :cond_0
    const-string/jumbo v4, "0"

    .line 114
    .local v4, "paytype":Ljava/lang/String;
    iget-object v0, p0, Lams;->d:Lamr;

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lamr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v0, p0, Lams;->g:Lamy;

    if-nez v0, :cond_0

    .line 437
    const-wide/16 v0, -0x1

    .line 439
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lams;->f:Lamr;

    invoke-virtual {v0, p1}, Lamr;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lams;->g:Lamy;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lams;->g:Lamy;

    invoke-interface {v0, p1}, Lamy;->onError(I)V

    .line 426
    :cond_0
    return-void
.end method
