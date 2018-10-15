.class public Lalg;
.super Lajj;
.source "MovicesCardPresenter.java"


# instance fields
.field public b:Ljava/lang/String;

.field c:Lyn;

.field private d:Lajk;

.field private e:Lalh;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lajk;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "mCardView"    # Lajk;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "contentId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Lajj;-><init>()V

    .line 56
    new-instance v0, Lalg$1;

    invoke-direct {v0, p0}, Lalg$1;-><init>(Lalg;)V

    iput-object v0, p0, Lalg;->c:Lyn;

    .line 36
    new-instance v0, Lalh;

    iget-object v1, p0, Lalg;->c:Lyn;

    invoke-direct {v0, p2, v1}, Lalh;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lalg;->e:Lalh;

    .line 37
    iput-object p1, p0, Lalg;->d:Lajk;

    .line 38
    iput-object p3, p0, Lalg;->f:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic a(Lalg;)Lajk;
    .locals 1
    .param p0, "x0"    # Lalg;

    .prologue
    .line 25
    iget-object v0, p0, Lalg;->d:Lajk;

    return-object v0
.end method

.method static synthetic a(Lalg;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lalg;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lalg;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lalg;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lalg;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lalg;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lalg;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lalg;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lalg;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lalg;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string/jumbo v0, ""

    iget-object v1, p0, Lalg;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lalg;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 48
    iput-object p1, p0, Lalg;->a:Lail;

    .line 49
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1}, Lalg;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 27
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lalf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v9, "jsonObject":Lorg/json/JSONObject;
    if-nez v9, :cond_1

    .line 120
    const/4 v10, 0x0

    .line 190
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v10

    .line 122
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v24, "movies"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 123
    .local v3, "array":Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 124
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 126
    :cond_3
    const-string/jumbo v24, "moreUrl"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 127
    .local v13, "moreUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 128
    const/4 v10, 0x0

    goto :goto_0

    .line 130
    :cond_4
    move-object/from16 v0, p0

    iput-object v13, v0, Lalg;->b:Ljava/lang/String;

    .line 132
    const-string/jumbo v24, "dataSource"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 133
    .local v5, "dataSource":Lorg/json/JSONObject;
    const-string/jumbo v11, ""

    .line 134
    .local v11, "mIncome":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 135
    const-string/jumbo v24, "name"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 137
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v10, "mDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lalf;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v8, v0, :cond_0

    .line 139
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 140
    .local v23, "movies":Lorg/json/JSONObject;
    const-string/jumbo v24, "id"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 141
    .local v15, "movicesId":Ljava/lang/String;
    const-string/jumbo v24, "detailUrl"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 142
    .local v21, "movicesUrl":Ljava/lang/String;
    const-string/jumbo v24, "picUrl"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 143
    .local v16, "movicesImageUrl":Ljava/lang/String;
    const-string/jumbo v24, "title"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 144
    .local v20, "movicesTitle":Ljava/lang/String;
    const-string/jumbo v24, "stars"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 145
    .local v19, "movicesStar":Ljava/lang/String;
    const-string/jumbo v24, "average"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 146
    .local v14, "movicesAverage":Ljava/lang/String;
    const-string/jumbo v24, "pubDate"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 147
    .local v17, "movicesPubDate":Ljava/lang/String;
    const-string/jumbo v24, "actors"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 148
    .local v18, "movicesRloes":Lorg/json/JSONArray;
    const-string/jumbo v2, ""

    .line 149
    .local v2, "actors":Ljava/lang/String;
    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v24

    if-lez v24, :cond_6

    .line 150
    const/4 v12, 0x0

    .local v12, "mLength":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_6

    .line 151
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string/jumbo v26, "name"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 154
    .end local v12    # "mLength":I
    :cond_6
    const-string/jumbo v24, "directors"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 155
    .local v22, "movieDirectors":Lorg/json/JSONArray;
    const-string/jumbo v6, ""

    .line 156
    .local v6, "directors":Ljava/lang/String;
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v24

    if-lez v24, :cond_7

    .line 157
    const/4 v12, 0x0

    .restart local v12    # "mLength":I
    :goto_3
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_7

    .line 158
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string/jumbo v26, "name"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 157
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 161
    .end local v12    # "mLength":I
    :cond_7
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 162
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 163
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 164
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 138
    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 167
    :cond_9
    new-instance v4, Lalf;

    invoke-direct {v4}, Lalf;-><init>()V

    .line 168
    .local v4, "data":Lalf;
    invoke-virtual {v4, v15}, Lalf;->c(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lalf;->d(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lalf;->e(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lalf;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 175
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lalf;->a(I)V

    .line 176
    invoke-virtual {v4, v14}, Lalf;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :cond_a
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lalf;->h(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lalf;->b(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lalf;->a(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v4, v11}, Lalf;->i(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 188
    .end local v2    # "actors":Ljava/lang/String;
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v4    # "data":Lalf;
    .end local v5    # "dataSource":Lorg/json/JSONObject;
    .end local v6    # "directors":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "mDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lalf;>;"
    .end local v11    # "mIncome":Ljava/lang/String;
    .end local v13    # "moreUrl":Ljava/lang/String;
    .end local v14    # "movicesAverage":Ljava/lang/String;
    .end local v15    # "movicesId":Ljava/lang/String;
    .end local v16    # "movicesImageUrl":Ljava/lang/String;
    .end local v17    # "movicesPubDate":Ljava/lang/String;
    .end local v18    # "movicesRloes":Lorg/json/JSONArray;
    .end local v19    # "movicesStar":Ljava/lang/String;
    .end local v20    # "movicesTitle":Ljava/lang/String;
    .end local v21    # "movicesUrl":Ljava/lang/String;
    .end local v22    # "movieDirectors":Lorg/json/JSONArray;
    .end local v23    # "movies":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 189
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v24, "MovicesCardPresenter"

    const-string/jumbo v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 178
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "actors":Ljava/lang/String;
    .restart local v3    # "array":Lorg/json/JSONArray;
    .restart local v4    # "data":Lalf;
    .restart local v5    # "dataSource":Lorg/json/JSONObject;
    .restart local v6    # "directors":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "mDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lalf;>;"
    .restart local v11    # "mIncome":Ljava/lang/String;
    .restart local v13    # "moreUrl":Ljava/lang/String;
    .restart local v14    # "movicesAverage":Ljava/lang/String;
    .restart local v15    # "movicesId":Ljava/lang/String;
    .restart local v16    # "movicesImageUrl":Ljava/lang/String;
    .restart local v17    # "movicesPubDate":Ljava/lang/String;
    .restart local v18    # "movicesRloes":Lorg/json/JSONArray;
    .restart local v19    # "movicesStar":Ljava/lang/String;
    .restart local v20    # "movicesTitle":Ljava/lang/String;
    .restart local v21    # "movicesUrl":Ljava/lang/String;
    .restart local v22    # "movieDirectors":Lorg/json/JSONArray;
    .restart local v23    # "movies":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    .line 179
    .restart local v7    # "e":Ljava/lang/Exception;
    goto :goto_4
.end method

.method public g()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lalg;->e:Lalh;

    invoke-virtual {v0}, Lalh;->a()J

    .line 44
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Movie"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalg;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
