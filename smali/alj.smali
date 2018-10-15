.class public Lalj;
.super Lajj;
.source "MusicCardPresenter.java"


# instance fields
.field b:Lyn;

.field private c:Lajk;

.field private d:Laib;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lajk;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "mCardView"    # Lajk;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "contentId"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lajj;-><init>()V

    .line 71
    new-instance v0, Lalj$1;

    invoke-direct {v0, p0}, Lalj$1;-><init>(Lalj;)V

    iput-object v0, p0, Lalj;->b:Lyn;

    .line 40
    new-instance v0, Laib;

    iget-object v1, p0, Lalj;->b:Lyn;

    invoke-direct {v0, p2, v1}, Laib;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lalj;->d:Laib;

    .line 41
    iput-object p1, p0, Lalj;->c:Lajk;

    .line 42
    iput-object p3, p0, Lalj;->e:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic a(Lalj;)Lajk;
    .locals 1
    .param p0, "x0"    # Lalj;

    .prologue
    .line 30
    iget-object v0, p0, Lalj;->c:Lajk;

    return-object v0
.end method

.method static synthetic a(Lalj;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lalj;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lalj;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lalj;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lalj;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lalj;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lalj;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lalj;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lalj;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v19, "result"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 124
    .local v16, "result":Lorg/json/JSONObject;
    const-string/jumbo v19, "moreurl"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 125
    .local v14, "moreUrl":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 126
    const-string/jumbo v19, "MusicCardPresenter"

    const-string/jumbo v20, "moreUrl\u7a7a"

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v8, 0x0

    .line 166
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "moreUrl":Ljava/lang/String;
    .end local v16    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v8

    .line 129
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v14    # "moreUrl":Ljava/lang/String;
    .restart local v16    # "result":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, p0

    iput-object v14, v0, Lalj;->f:Ljava/lang/String;

    .line 130
    const-string/jumbo v19, "datasource"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 131
    .local v3, "dataSource":Lorg/json/JSONObject;
    const-string/jumbo v19, "id"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "dataSourceId":Ljava/lang/String;
    const-string/jumbo v19, "list"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 133
    .local v17, "resultArray":Lorg/json/JSONArray;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 134
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 136
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v8, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_0

    .line 138
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 139
    .local v15, "music":Lorg/json/JSONObject;
    const-string/jumbo v19, "MusicCardPresenter"

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string/jumbo v19, "id"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, "mMusicId":Ljava/lang/String;
    const-string/jumbo v19, "name"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "mMusicName":Ljava/lang/String;
    const-string/jumbo v19, "album"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "mIssue":Ljava/lang/String;
    const-string/jumbo v19, "coverpic"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "mPicUrl":Ljava/lang/String;
    const-string/jumbo v19, "singer"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, "mSinger":Ljava/lang/String;
    const-string/jumbo v19, "shareurl"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 146
    .local v18, "shareUrl":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 147
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 148
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 137
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 152
    :cond_5
    new-instance v2, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-direct {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;-><init>()V

    .line 153
    .local v2, "data":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    invoke-virtual {v2, v9}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2, v11}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->m(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2, v12}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, v13}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b(Ljava/lang/String;)V

    .line 157
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c(I)V

    .line 158
    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->l(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->h(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 164
    .end local v2    # "data":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .end local v3    # "dataSource":Lorg/json/JSONObject;
    .end local v4    # "dataSourceId":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    .end local v9    # "mIssue":Ljava/lang/String;
    .end local v10    # "mMusicId":Ljava/lang/String;
    .end local v11    # "mMusicName":Ljava/lang/String;
    .end local v12    # "mPicUrl":Ljava/lang/String;
    .end local v13    # "mSinger":Ljava/lang/String;
    .end local v14    # "moreUrl":Ljava/lang/String;
    .end local v15    # "music":Lorg/json/JSONObject;
    .end local v16    # "result":Lorg/json/JSONObject;
    .end local v17    # "resultArray":Lorg/json/JSONArray;
    .end local v18    # "shareUrl":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 165
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "MusicCardPresenter"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lalj;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string/jumbo v0, ""

    iget-object v1, p0, Lalj;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lalj;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 63
    iput-object p1, p0, Lalj;->a:Lail;

    .line 64
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 47
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "bfocus"

    const-string/jumbo v3, "music"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "recommend"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v2, "requestsource"

    const-string/jumbo v3, "card"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v2, "category"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v2, "pageindex"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v2, "pagesize"

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    iget-object v2, p0, Lalj;->d:Laib;

    invoke-virtual {v2, v1}, Laib;->a(Lorg/json/JSONObject;)J

    .line 59
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "MusicCardPresenter"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
