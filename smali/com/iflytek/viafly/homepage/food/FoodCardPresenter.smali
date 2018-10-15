.class public Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;
.super Lajj;
.source "FoodCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field c:Lyn;

.field private d:Laib;

.field private e:Lajk;

.field private f:Ljava/lang/String;

.field private g:Landroid/os/Handler;

.field private final h:I

.field private final i:I

.field private j:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

.field private final k:I

.field private final l:J

.field private m:I

.field private n:Z

.field private o:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Lajk;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "listenView"    # Lajk;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "contentId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-direct {p0}, Lajj;-><init>()V

    .line 48
    iput v2, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->h:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->i:I

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->k:I

    .line 55
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->l:J

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->m:I

    .line 105
    new-instance v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;-><init>(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->c:Lyn;

    .line 297
    new-instance v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$2;-><init>(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->o:Landroid/os/Handler$Callback;

    .line 62
    new-instance v0, Laib;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->c:Lyn;

    invoke-direct {v0, p2, v1}, Laib;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->d:Laib;

    .line 63
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->e:Lajk;

    .line 64
    iput-object p3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->f:Ljava/lang/String;

    .line 65
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->n:Z

    .line 66
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->o:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->g:Landroid/os/Handler;

    .line 67
    sget-object v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->init:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->j:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;)Lajk;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->e:Lajk;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    .prologue
    .line 31
    iget v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->m:I

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(ILjava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xbb8

    const/16 v5, 0x3ea

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 260
    const-string/jumbo v1, "FoodCardPresenter"

    const-string/jumbo v2, "\u5f00\u59cb\u8bf7\u6c42\u63a5\u53e3\u524d\u68c0\u67e5"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Loa;->a()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->d()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 262
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    const-string/jumbo v1, "FoodCardPresenter"

    const-string/jumbo v2, "\u6709\u7f51\u7edc\u4e14\u6709\u5730\u5740\u4fe1\u606f\uff0c\u76f4\u63a5\u5f00\u59cb\u8bf7\u6c42"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const-string/jumbo v1, "FoodCardPresenter"

    const-string/jumbo v2, "\u6709\u7f51\u7edc \u65e0\u5730\u5740\u4fe1\u606f"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Loa;->a()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    iget v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->m:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 270
    const-string/jumbo v1, "FoodCardPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6b63\u5728\u5b9a\u4f4d\uff1a\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6b21\u5c1d\u8bd5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v1, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->locating:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->j:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    .line 272
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->g:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->g:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->g:Landroid/os/Handler;

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 277
    :cond_2
    const-string/jumbo v1, "FoodCardPresenter"

    const-string/jumbo v2, "\u5b9a\u4f4d\u5931\u8d25"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(ILjava/lang/String;)V

    .line 279
    sget-object v1, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->j:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    goto :goto_0

    .line 282
    :cond_3
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->n:Z

    if-eqz v1, :cond_4

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->n:Z

    .line 284
    const-string/jumbo v1, "FoodCardPresenter"

    const-string/jumbo v2, "\u521d\u59cb\u5316\u5b9a\u4f4d\u5931\u8d25\uff0c3\u79d2\u540e\u91cd\u8bd5"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v1, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->locating:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->j:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    .line 286
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->g:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->g:Landroid/os/Handler;

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 290
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(ILjava/lang/String;)V

    .line 292
    sget-object v1, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->j:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "bfocus"

    const-string/jumbo v3, "restaurant"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v2, "requestsource"

    const-string/jumbo v3, "card"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v2, "category"

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v2, "pageindex"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v2, "pagesize"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v2, "recommend"

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "recommend"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->d:Laib;

    invoke-virtual {v2, v1}, Laib;->a(Lorg/json/JSONObject;)J

    .line 96
    const-string/jumbo v2, "FoodCardPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restaurant"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "category"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 90
    :cond_0
    :try_start_1
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "category"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "FoodCardPresenter"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a:Lail;

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 30
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Laks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    .local v8, "jsonObject":Lorg/json/JSONObject;
    if-nez v8, :cond_1

    .line 174
    const/4 v9, 0x0

    .line 251
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v9

    .line 176
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v21, "result"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 177
    .local v19, "result":Lorg/json/JSONObject;
    if-nez v19, :cond_2

    .line 179
    const/4 v9, 0x0

    goto :goto_0

    .line 181
    :cond_2
    const-string/jumbo v21, "moreurl"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 182
    .local v17, "moreUrl":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 183
    const-string/jumbo v21, "FoodCardPresenter"

    const-string/jumbo v22, "moreUrl\u7a7a"

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v9, 0x0

    goto :goto_0

    .line 186
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->b:Ljava/lang/String;

    .line 188
    const-string/jumbo v21, "datasource"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 189
    .local v4, "dataSource":Lorg/json/JSONObject;
    const-string/jumbo v12, ""

    .line 190
    .local v12, "mIncome":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 191
    const-string/jumbo v21, "name"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 193
    :cond_4
    const-string/jumbo v21, "FoodCardPresenter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "moreUrl:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string/jumbo v21, "list"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 195
    .local v20, "resultArray":Lorg/json/JSONArray;
    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 196
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 198
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v9, "mDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laks;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_0

    .line 200
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 201
    .local v18, "restaurant":Lorg/json/JSONObject;
    const-string/jumbo v21, "FoodCardPresenter"

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string/jumbo v21, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, "foodId":Ljava/lang/String;
    const-string/jumbo v21, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "category":Ljava/lang/String;
    const-string/jumbo v21, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 205
    .local v14, "mRestaurantName":Ljava/lang/String;
    const-string/jumbo v21, "score"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 206
    .local v15, "mScoring":Ljava/lang/String;
    const-string/jumbo v21, "distance"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, "mDistance":Ljava/lang/String;
    const-string/jumbo v21, "shopurl"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 208
    .local v16, "mUrl":Ljava/lang/String;
    const-string/jumbo v21, "pic"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 210
    .local v13, "mPicUrl":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 211
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 212
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 213
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 214
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    if-eqz v21, :cond_8

    .line 199
    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 221
    :cond_8
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 225
    .local v11, "mDistanceFloat":F
    const/high16 v21, 0x447a0000    # 1000.0f

    cmpl-float v21, v11, v21

    if-lez v21, :cond_9

    .line 226
    :try_start_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "%.1f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    float-to-double v0, v11

    move-wide/from16 v26, v0

    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\u5343\u7c73"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 231
    :goto_3
    new-instance v3, Laks;

    invoke-direct {v3}, Laks;-><init>()V

    .line 232
    .local v3, "data":Laks;
    invoke-virtual {v3, v6}, Laks;->a(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v3, v2}, Laks;->c(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v3, v14}, Laks;->b(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3, v10}, Laks;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    :try_start_3
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Laks;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 243
    :try_start_4
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Laks;->e(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v3, v13}, Laks;->f(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3, v12}, Laks;->g(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 249
    .end local v2    # "category":Ljava/lang/String;
    .end local v3    # "data":Laks;
    .end local v4    # "dataSource":Lorg/json/JSONObject;
    .end local v6    # "foodId":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "mDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laks;>;"
    .end local v10    # "mDistance":Ljava/lang/String;
    .end local v11    # "mDistanceFloat":F
    .end local v12    # "mIncome":Ljava/lang/String;
    .end local v13    # "mPicUrl":Ljava/lang/String;
    .end local v14    # "mRestaurantName":Ljava/lang/String;
    .end local v15    # "mScoring":Ljava/lang/String;
    .end local v16    # "mUrl":Ljava/lang/String;
    .end local v17    # "moreUrl":Ljava/lang/String;
    .end local v18    # "restaurant":Lorg/json/JSONObject;
    .end local v19    # "result":Lorg/json/JSONObject;
    .end local v20    # "resultArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    .line 250
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "FoodCardPresenter"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 222
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "category":Ljava/lang/String;
    .restart local v4    # "dataSource":Lorg/json/JSONObject;
    .restart local v6    # "foodId":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "mDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laks;>;"
    .restart local v10    # "mDistance":Ljava/lang/String;
    .restart local v12    # "mIncome":Ljava/lang/String;
    .restart local v13    # "mPicUrl":Ljava/lang/String;
    .restart local v14    # "mRestaurantName":Ljava/lang/String;
    .restart local v15    # "mScoring":Ljava/lang/String;
    .restart local v16    # "mUrl":Ljava/lang/String;
    .restart local v17    # "moreUrl":Ljava/lang/String;
    .restart local v18    # "restaurant":Lorg/json/JSONObject;
    .restart local v19    # "result":Lorg/json/JSONObject;
    .restart local v20    # "resultArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v5

    .line 223
    .restart local v5    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 229
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v11    # "mDistanceFloat":F
    :cond_9
    :try_start_5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\u7c73"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v10

    goto :goto_3

    .line 239
    .restart local v3    # "data":Laks;
    :catch_2
    move-exception v5

    .line 240
    .restart local v5    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "recommend"

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->c()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a()V

    goto :goto_0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Food"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
