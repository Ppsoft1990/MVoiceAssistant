.class public Lcom/iflytek/viafly/homepage/news/NewsPresenter;
.super Lajj;
.source "NewsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;
    }
.end annotation


# instance fields
.field b:Lyn;

.field private final c:Ljava/lang/String;

.field private d:Lajk;

.field private e:Laib;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

.field private final k:I

.field private final l:J

.field private m:I

.field private final n:I

.field private final o:I

.field private p:Landroid/os/Handler;

.field private q:Z

.field private r:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Lajk;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "newsView"    # Lajk;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "contentId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-direct {p0}, Lajj;-><init>()V

    .line 33
    const-string/jumbo v0, "NewsPresenter"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->c:Ljava/lang/String;

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->h:I

    .line 51
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->k:I

    .line 53
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->l:J

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->m:I

    .line 57
    iput v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->n:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->o:I

    .line 75
    new-instance v0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;-><init>(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b:Lyn;

    .line 240
    new-instance v0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter$2;-><init>(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->r:Landroid/os/Handler$Callback;

    .line 64
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->d:Lajk;

    .line 65
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->f:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->g:Ljava/lang/String;

    .line 68
    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->q:Z

    .line 69
    sget-object v0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;->init:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->j:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

    .line 70
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->r:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->p:Landroid/os/Handler;

    .line 72
    new-instance v0, Laib;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b:Lyn;

    invoke-direct {v0, p2, v1}, Laib;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->e:Laib;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)Lajk;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->d:Lajk;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/homepage/news/NewsPresenter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/news/NewsPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(ILjava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 264
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "bfocus"

    const-string/jumbo v3, "news"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string/jumbo v2, "requestsource"

    const-string/jumbo v3, "card"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string/jumbo v2, "category"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string/jumbo v2, "pageindex"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    const-string/jumbo v2, "pagesize"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "NewsPresenter"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xbb8

    const/16 v6, 0x3ea

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 202
    const-string/jumbo v2, "NewsPresenter"

    const-string/jumbo v3, "\u5f00\u59cb\u8bf7\u6c42\u63a5\u53e3\u524d\u68c0\u67e5"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Loa;->a()Loa;

    move-result-object v2

    invoke-virtual {v2}, Loa;->d()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    .line 204
    .local v0, "address":Lcom/iflytek/common/lbs/XAddress;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    const-string/jumbo v2, "local"

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->g:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 208
    .local v1, "paramElement":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->e:Laib;

    invoke-virtual {v2, v1}, Laib;->a(Lorg/json/JSONObject;)J

    .line 238
    .end local v1    # "paramElement":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-static {}, Loa;->a()Loa;

    move-result-object v2

    invoke-virtual {v2}, Loa;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    iget v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->m:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 213
    const-string/jumbo v2, "NewsPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6b63\u5728\u5b9a\u4f4d\uff1a\u7b2c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6b21\u5c1d\u8bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v2, Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;->locating:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->j:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

    .line 215
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->p:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->p:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->p:Landroid/os/Handler;

    invoke-virtual {v2, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 220
    :cond_2
    const-string/jumbo v2, "NewsPresenter"

    const-string/jumbo v3, "\u5b9a\u4f4d\u5931\u8d25"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(ILjava/lang/String;)V

    .line 222
    sget-object v2, Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->j:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

    goto :goto_0

    .line 225
    :cond_3
    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->q:Z

    if-eqz v2, :cond_4

    .line 226
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->q:Z

    .line 227
    const-string/jumbo v2, "NewsPresenter"

    const-string/jumbo v3, "\u521d\u59cb\u5316\u5b9a\u4f4d\u5931\u8d25\uff0c3\u79d2\u540e\u91cd\u8bd5"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v2, Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;->locating:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->j:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

    .line 229
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->p:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->p:Landroid/os/Handler;

    invoke-virtual {v2, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 233
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(ILjava/lang/String;)V

    .line 235
    sget-object v2, Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->j:Lcom/iflytek/viafly/homepage/news/NewsPresenter$LocateStateEnum;

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b()V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/homepage/news/NewsPresenter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/news/NewsPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    .prologue
    .line 32
    iget v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->m:I

    return v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/homepage/news/NewsPresenter;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/homepage/news/NewsPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v14, 0x0

    .line 140
    .local v14, "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v12, "jsonObject":Lorg/json/JSONObject;
    if-eqz v12, :cond_4

    .line 142
    const-string/jumbo v17, "result"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 143
    .local v16, "resultObject":Lorg/json/JSONObject;
    if-eqz v16, :cond_4

    .line 144
    const-string/jumbo v17, "moreurl"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->i:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->i:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 146
    const/4 v15, 0x0

    .line 179
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "resultObject":Lorg/json/JSONObject;
    :goto_0
    return-object v15

    .line 148
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v16    # "resultObject":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v17, "list"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 149
    .local v13, "listArray":Lorg/json/JSONArray;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 150
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v14    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    .local v15, "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_3

    .line 152
    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 153
    .local v11, "itemObject":Lorg/json/JSONObject;
    if-eqz v11, :cond_1

    .line 154
    const-string/jumbo v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v17, "site"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "site":Ljava/lang/String;
    const-string/jumbo v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "title":Ljava/lang/String;
    const-string/jumbo v17, "publishtime"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "time":Ljava/lang/String;
    const-string/jumbo v17, "imageurl"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "imageUrl":Ljava/lang/String;
    const-string/jumbo v17, "detailurl"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "detail":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 161
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 162
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 151
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "site":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "imageUrl":Ljava/lang/String;
    .end local v8    # "detail":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 165
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "site":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    .restart local v6    # "time":Ljava/lang/String;
    .restart local v7    # "imageUrl":Ljava/lang/String;
    .restart local v8    # "detail":Ljava/lang/String;
    :cond_2
    new-instance v2, Lall;

    invoke-direct/range {v2 .. v8}, Lall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v2, "newsModel":Lall;
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->h:I

    move/from16 v18, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object v14, v15

    .line 168
    .end local v15    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    .restart local v14    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    goto/16 :goto_0

    .end local v2    # "newsModel":Lall;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "site":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "imageUrl":Ljava/lang/String;
    .end local v8    # "detail":Ljava/lang/String;
    .end local v11    # "itemObject":Lorg/json/JSONObject;
    .end local v14    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    .restart local v15    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    :cond_3
    move-object v14, v15

    .line 172
    .end local v15    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    .restart local v14    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    goto/16 :goto_0

    .line 176
    .end local v10    # "i":I
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "listArray":Lorg/json/JSONArray;
    .end local v16    # "resultObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 177
    .local v9, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v17, "NewsPresenter"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 176
    .end local v14    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    .restart local v10    # "i":I
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "listArray":Lorg/json/JSONArray;
    .restart local v15    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    .restart local v16    # "resultObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    move-object v14, v15

    .end local v15    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    .restart local v14    # "models":Ljava/util/List;, "Ljava/util/List<Lall;>;"
    goto :goto_2
.end method

.method public a()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a:Lail;

    .line 129
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailUrl"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected g()V
    .locals 4

    .prologue
    .line 113
    const-string/jumbo v1, "top"

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string/jumbo v1, "top"

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->g:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    .local v0, "paramElement":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->e:Laib;

    invoke-virtual {v1, v0}, Laib;->a(Lorg/json/JSONObject;)J

    .line 123
    .end local v0    # "paramElement":Lorg/json/JSONObject;
    :goto_0
    const-string/jumbo v1, "NewsPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "news"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 116
    :cond_0
    const-string/jumbo v1, "local"

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b()V

    goto :goto_0

    .line 119
    :cond_1
    const-string/jumbo v1, "category"

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->g:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 120
    .restart local v0    # "paramElement":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->e:Laib;

    invoke-virtual {v1, v0}, Laib;->a(Lorg/json/JSONObject;)J

    goto :goto_0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "News"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
