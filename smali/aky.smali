.class public Laky;
.super Lajj;
.source "ListenPresenter.java"


# instance fields
.field b:Lyn;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:Lajk;

.field private f:Laib;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lajk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "listenView"    # Lajk;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "contentId"    # Ljava/lang/String;
    .param p4, "contentName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Lajj;-><init>()V

    .line 29
    const-string/jumbo v0, "ListenPresenter"

    iput-object v0, p0, Laky;->c:Ljava/lang/String;

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Laky;->d:I

    .line 45
    new-instance v0, Laky$1;

    invoke-direct {v0, p0}, Laky$1;-><init>(Laky;)V

    iput-object v0, p0, Laky;->b:Lyn;

    .line 39
    iput-object p1, p0, Laky;->e:Lajk;

    .line 40
    iput-object p3, p0, Laky;->g:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Laky;->h:Ljava/lang/String;

    .line 42
    new-instance v0, Laib;

    iget-object v1, p0, Laky;->b:Lyn;

    invoke-direct {v0, p2, v1}, Laib;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Laky;->f:Laib;

    .line 43
    return-void
.end method

.method static synthetic a(Laky;)Lajk;
    .locals 1
    .param p0, "x0"    # Laky;

    .prologue
    .line 28
    iget-object v0, p0, Laky;->e:Lajk;

    return-object v0
.end method

.method static synthetic a(Laky;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laky;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Laky;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Laky;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laky;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Laky;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Laky;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laky;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Laky;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lakx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const/16 v16, 0x0

    .line 115
    .local v16, "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .local v14, "jsonObject":Lorg/json/JSONObject;
    if-eqz v14, :cond_3

    .line 117
    const-string/jumbo v19, "result"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 118
    .local v18, "resultObject":Lorg/json/JSONObject;
    if-eqz v18, :cond_3

    .line 119
    const-string/jumbo v19, "list"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 120
    .local v15, "listArray":Lorg/json/JSONArray;
    const-string/jumbo v19, "moreurl"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Laky;->i:Ljava/lang/String;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Laky;->i:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v17, v16

    .line 155
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "listArray":Lorg/json/JSONArray;
    .end local v16    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    .end local v18    # "resultObject":Lorg/json/JSONObject;
    :goto_0
    return-object v17

    .line 124
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v15    # "listArray":Lorg/json/JSONArray;
    .restart local v16    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    .restart local v18    # "resultObject":Lorg/json/JSONObject;
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v16    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    .local v17, "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    if-eqz v15, :cond_4

    :try_start_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 126
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_4

    .line 127
    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 128
    .local v13, "itemObject":Lorg/json/JSONObject;
    if-eqz v13, :cond_1

    .line 129
    const-string/jumbo v19, "id"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v19, "name"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v19, "author"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "author":Ljava/lang/String;
    const-string/jumbo v19, "reader"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "reader":Ljava/lang/String;
    const-string/jumbo v19, "coverpic"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "coverPic":Ljava/lang/String;
    const-string/jumbo v19, "chapterid"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "chapterId":Ljava/lang/String;
    const-string/jumbo v19, "desc"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, "longDesc":Ljava/lang/String;
    const-string/jumbo v19, "detailurl"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "detail":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 138
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 139
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 126
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "author":Ljava/lang/String;
    .end local v6    # "reader":Ljava/lang/String;
    .end local v7    # "coverPic":Ljava/lang/String;
    .end local v8    # "chapterId":Ljava/lang/String;
    .end local v9    # "detail":Ljava/lang/String;
    .end local v10    # "longDesc":Ljava/lang/String;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 142
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "author":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/lang/String;
    .restart local v7    # "coverPic":Ljava/lang/String;
    .restart local v8    # "chapterId":Ljava/lang/String;
    .restart local v9    # "detail":Ljava/lang/String;
    .restart local v10    # "longDesc":Ljava/lang/String;
    :cond_2
    new-instance v2, Lakx;

    invoke-direct/range {v2 .. v10}, Lakx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v2, "listenModel":Lakx;
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Laky;->d:I

    move/from16 v20, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    move-object/from16 v16, v17

    .line 145
    .end local v17    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    .restart local v16    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    goto/16 :goto_0

    .line 152
    .end local v2    # "listenModel":Lakx;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "author":Ljava/lang/String;
    .end local v6    # "reader":Ljava/lang/String;
    .end local v7    # "coverPic":Ljava/lang/String;
    .end local v8    # "chapterId":Ljava/lang/String;
    .end local v9    # "detail":Ljava/lang/String;
    .end local v10    # "longDesc":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "itemObject":Lorg/json/JSONObject;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "listArray":Lorg/json/JSONArray;
    .end local v18    # "resultObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 153
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v19, "ListenPresenter"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    move-object/from16 v17, v16

    .line 155
    .local v17, "models":Ljava/lang/Object;, "Ljava/util/List<Lakx;>;"
    goto/16 :goto_0

    .line 152
    .end local v16    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v15    # "listArray":Lorg/json/JSONArray;
    .local v17, "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    .restart local v18    # "resultObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    .restart local v16    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    goto :goto_2

    .end local v16    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    .restart local v17    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    :cond_4
    move-object/from16 v16, v17

    .end local v17    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    .restart local v16    # "models":Ljava/util/List;, "Ljava/util/List<Lakx;>;"
    goto :goto_3
.end method

.method public a()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Laky;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const-string/jumbo v0, ""

    iget-object v1, p0, Laky;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laky;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 103
    iput-object p1, p0, Laky;->a:Lail;

    .line 104
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1}, Laky;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "bfocus"

    const-string/jumbo v3, "listenbook"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v2, "requestsource"

    const-string/jumbo v3, "card"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v2, "pageindex"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v2, "pagesize"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v2, "recommend"

    iget-object v3, p0, Laky;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "recommend"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    iget-object v2, p0, Laky;->f:Laib;

    invoke-virtual {v2, v1}, Laib;->a(Lorg/json/JSONObject;)J

    .line 99
    return-void

    .line 92
    :cond_0
    :try_start_1
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "category"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v2, "category"

    iget-object v3, p0, Laky;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "ListenPresenter"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ListenBook"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laky;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
