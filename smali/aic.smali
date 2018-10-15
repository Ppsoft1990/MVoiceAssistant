.class public Laic;
.super Ljava/lang/Object;
.source "HomeCardItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Laic;->o:Z

    return-void
.end method

.method public static a(Ljava/lang/String;II)Laic;
    .locals 1
    .param p0, "groupId"    # Ljava/lang/String;
    .param p1, "cardType"    # I
    .param p2, "state"    # I

    .prologue
    .line 247
    new-instance v0, Laic;

    invoke-direct {v0}, Laic;-><init>()V

    .line 248
    .local v0, "homeCardItem":Laic;
    invoke-virtual {v0, p2}, Laic;->b(I)V

    .line 249
    invoke-virtual {v0, p1}, Laic;->a(I)V

    .line 250
    invoke-virtual {v0, p0}, Laic;->a(Ljava/lang/String;)V

    .line 251
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;
    .locals 2
    .param p0, "groupId"    # Ljava/lang/String;
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;
    .param p3, "contentName"    # Ljava/lang/String;
    .param p4, "cardType"    # I
    .param p5, "state"    # I

    .prologue
    .line 235
    new-instance v0, Laic;

    invoke-direct {v0}, Laic;-><init>()V

    .line 236
    .local v0, "homeCardItem":Laic;
    invoke-virtual {v0, p5}, Laic;->b(I)V

    .line 237
    invoke-virtual {v0, p4}, Laic;->a(I)V

    .line 238
    invoke-virtual {v0, p2}, Laic;->c(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p0}, Laic;->a(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p1}, Laic;->b(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, p3}, Laic;->d(Ljava/lang/String;)V

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laic;->i(Ljava/lang/String;)V

    .line 243
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 281
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 283
    .local v2, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laic;

    .line 284
    .local v1, "homeCardItem":Laic;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "groupId"

    invoke-virtual {v1}, Laic;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string/jumbo v5, "type"

    invoke-virtual {v1}, Laic;->e()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 287
    const-string/jumbo v5, "state"

    invoke-virtual {v1}, Laic;->f()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 288
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    .end local v1    # "homeCardItem":Laic;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 295
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 290
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public static h(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v4, v9

    .line 276
    :cond_0
    :goto_0
    return-object v4

    .line 259
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 260
    .local v6, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v4, "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 262
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 263
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "groupId"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "groupId":Ljava/lang/String;
    const-string/jumbo v10, "type"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 265
    .local v0, "cardType":I
    const-string/jumbo v10, "state"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 266
    .local v8, "state":I
    new-instance v3, Laic;

    invoke-direct {v3}, Laic;-><init>()V

    .line 267
    .local v3, "homeCardItem":Laic;
    invoke-virtual {v3, v8}, Laic;->b(I)V

    .line 268
    invoke-virtual {v3, v2}, Laic;->a(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v3, v0}, Laic;->a(I)V

    .line 270
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "cardType":I
    .end local v2    # "groupId":Ljava/lang/String;
    .end local v3    # "homeCardItem":Laic;
    .end local v4    # "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    .end local v5    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "state":I
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v10, "HomeCardItem"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v9

    .line 276
    goto :goto_0
.end method

.method public static n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "cardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    invoke-static {}, Laic;->q()Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const-string/jumbo v1, "Weather"

    invoke-static {v1, v2, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const-string/jumbo v1, "Fee"

    invoke-static {v1, v2, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {}, Laic;->t()Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-static {}, Laic;->s()Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {}, Laic;->u()Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const-string/jumbo v1, "AudioNews"

    invoke-static {v1, v3, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string/jumbo v1, "News"

    invoke-static {v1, v3, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const-string/jumbo v1, "ListenBook"

    invoke-static {v1, v3, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const-string/jumbo v1, "Music"

    invoke-static {v1, v3, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string/jumbo v1, "Movie"

    invoke-static {v1, v3, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-string/jumbo v1, "Food"

    invoke-static {v1, v3, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v0
.end method

.method public static o()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v6, "cardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    invoke-static {}, Laic;->r()Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const-string/jumbo v0, "Weather"

    const-string/jumbo v1, "\u5929\u6c14\u5361\u7247"

    const-string/jumbo v2, "weather_category"

    const-string/jumbo v3, "\u5929\u6c14\u5361\u7247"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const-string/jumbo v0, "Fee"

    const-string/jumbo v1, "\u8bdd\u8d39\u6d41\u91cf"

    const-string/jumbo v2, "cmcc_category"

    const-string/jumbo v3, "\u8bdd\u8d39\u6d41\u91cf"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string/jumbo v0, "Schedule"

    const-string/jumbo v1, "\u63d0\u9192\u5361\u7247"

    const-string/jumbo v2, "schedule_category"

    const-string/jumbo v3, "\u63d0\u9192\u5361\u7247"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string/jumbo v0, "Banner"

    const-string/jumbo v1, "\u8f6e\u64ad\u56fe"

    const-string/jumbo v2, "banner_category"

    const-string/jumbo v3, "\u8f6e\u64ad\u56fe"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {}, Laic;->v()Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string/jumbo v0, "Food"

    const-string/jumbo v1, "\u7f8e\u98df\u5361\u7247"

    const-string/jumbo v2, "recommend"

    const-string/jumbo v3, "\u9644\u8fd1\u9910\u9986"

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {}, Laic;->w()Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const-string/jumbo v0, "ListenBook"

    const-string/jumbo v1, "\u542c\u4e66\u5361\u7247"

    const-string/jumbo v2, "recommend"

    const-string/jumbo v3, "\u542c\u4e66\u63a8\u8350"

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    const-string/jumbo v0, "YueTingKa"

    const-string/jumbo v1, "\u60a6\u542c\u5496"

    const-string/jumbo v2, "well_category"

    const-string/jumbo v3, "\u60a6\u542c\u5496"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const-string/jumbo v0, "News"

    const-string/jumbo v1, "\u65b0\u95fb\u5361\u7247"

    const-string/jumbo v2, "top"

    const-string/jumbo v3, "\u5934\u6761\u65b0\u95fb"

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const-string/jumbo v0, "AudioNews"

    const-string/jumbo v1, "\u6709\u58f0\u8d44\u8baf"

    const-string/jumbo v2, "recommend"

    const-string/jumbo v3, "\u6709\u58f0\u8d44\u8baf"

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Laic;->x()Laic;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-object v6
.end method

.method public static p()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_MAIN_PAGE_DATA"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "cardCfg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    invoke-static {v0}, Laic;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 190
    :cond_0
    invoke-static {}, Laic;->n()Ljava/util/List;

    move-result-object v1

    .line 199
    :cond_1
    :goto_0
    return-object v1

    .line 194
    .end local v1    # "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    :cond_2
    invoke-static {}, Laic;->n()Ljava/util/List;

    move-result-object v1

    .line 195
    .restart local v1    # "homeCardItems":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    invoke-static {v1}, Laic;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_MAIN_PAGE_DATA"

    invoke-virtual {v2, v3, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static q()Laic;
    .locals 3

    .prologue
    .line 203
    const-string/jumbo v0, "Notification"

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v0

    return-object v0
.end method

.method public static r()Laic;
    .locals 6

    .prologue
    .line 207
    const-string/jumbo v0, "Notification"

    const-string/jumbo v1, "\u901a\u77e5\u5361\u7247"

    const-string/jumbo v2, "notification_category"

    const-string/jumbo v3, "\u901a\u77e5\u5361\u7247"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    return-object v0
.end method

.method public static s()Laic;
    .locals 3

    .prologue
    .line 211
    const-string/jumbo v0, "YueTingKa"

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v0

    return-object v0
.end method

.method public static t()Laic;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 215
    const-string/jumbo v0, "Schedule"

    invoke-static {v0, v1, v1}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v0

    return-object v0
.end method

.method public static u()Laic;
    .locals 3

    .prologue
    .line 219
    const-string/jumbo v0, "Banner"

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laic;->a(Ljava/lang/String;II)Laic;

    move-result-object v0

    return-object v0
.end method

.method public static v()Laic;
    .locals 6

    .prologue
    .line 223
    const-string/jumbo v0, "Movie"

    const-string/jumbo v1, "\u7535\u5f71\u5361\u7247"

    const-string/jumbo v2, "recommend"

    const-string/jumbo v3, "\u70ed\u6620\u7535\u5f71"

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    return-object v0
.end method

.method public static w()Laic;
    .locals 6

    .prologue
    .line 227
    const-string/jumbo v0, "Music"

    const-string/jumbo v1, "\u97f3\u4e50\u5361\u7247"

    const-string/jumbo v2, "recommend"

    const-string/jumbo v3, "\u97f3\u4e50\u63a8\u8350"

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    return-object v0
.end method

.method public static x()Laic;
    .locals 6

    .prologue
    .line 231
    const-string/jumbo v0, "PictureRecommend"

    const-string/jumbo v1, "\u53cc\u56fe\u63a8\u8350"

    const-string/jumbo v2, "picture_category"

    const-string/jumbo v3, "\u53cc\u56fe\u63a8\u8350"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Laic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Laic;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Laic;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "cardType"    # I

    .prologue
    .line 78
    iput p1, p0, Laic;->f:I

    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupID"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Laic;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Laic;->o:Z

    .line 143
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Laic;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 86
    iput p1, p0, Laic;->g:I

    .line 87
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Laic;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Laic;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "groupState"    # I

    .prologue
    .line 94
    iput p1, p0, Laic;->h:I

    .line 95
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Laic;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Laic;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0
    .param p1, "contentOrder"    # I

    .prologue
    .line 102
    iput p1, p0, Laic;->i:I

    .line 103
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Laic;->e:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Laic;->f:I

    return v0
.end method

.method public e(I)V
    .locals 0
    .param p1, "extraInt"    # I

    .prologue
    .line 118
    iput p1, p0, Laic;->l:I

    .line 119
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Laic;->j:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Laic;->g:I

    return v0
.end method

.method public f(I)V
    .locals 0
    .param p1, "dataVersion"    # I

    .prologue
    .line 303
    iput p1, p0, Laic;->k:I

    .line 304
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraOne"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Laic;->m:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Laic;->h:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraTwo"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Laic;->n:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Laic;->i:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Laic;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1, "onlyKey"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Laic;->a:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Laic;->l:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Laic;->m:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Laic;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Laic;->o:Z

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Laic;->k:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Laic;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laic;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laic;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laic;->a:Ljava/lang/String;

    .line 315
    :cond_0
    iget-object v0, p0, Laic;->a:Ljava/lang/String;

    return-object v0
.end method
