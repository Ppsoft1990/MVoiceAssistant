.class public Lamx;
.super Ljava/lang/Object;
.source "BookCollectModel.java"


# instance fields
.field private a:Lamw;

.field private b:Lamw;

.field private c:Lamw;

.field private d:Lamq;

.field private e:Ljava/lang/Object;

.field private f:Lyn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lamq;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lamq;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lamx;->e:Ljava/lang/Object;

    .line 71
    new-instance v0, Lamx$1;

    invoke-direct {v0, p0}, Lamx$1;-><init>(Lamx;)V

    iput-object v0, p0, Lamx;->f:Lyn;

    .line 41
    iput-object p2, p0, Lamx;->d:Lamq;

    .line 42
    new-instance v0, Lamw;

    const-string/jumbo v1, "1144"

    iget-object v2, p0, Lamx;->f:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lamw;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lamx;->a:Lamw;

    .line 43
    new-instance v0, Lamw;

    const-string/jumbo v1, "1142"

    iget-object v2, p0, Lamx;->f:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lamw;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lamx;->b:Lamw;

    .line 44
    new-instance v0, Lamw;

    const-string/jumbo v1, "1143"

    iget-object v2, p0, Lamx;->f:Lyn;

    invoke-direct {v0, p1, v1, v2}, Lamw;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lamx;->c:Lamw;

    .line 45
    return-void
.end method

.method static synthetic a(Lamx;I)I
    .locals 1
    .param p0, "x0"    # Lamx;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lamx;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lamx;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lamx;

    .prologue
    .line 30
    iget-object v0, p0, Lamx;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lamx;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lamx;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lamx;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lamx;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lamx;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;
    .param p4, "x4"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lamx;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    const/16 v5, 0x3ef

    .line 160
    const-string/jumbo v3, "000000"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "success"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    const-string/jumbo v3, "BookCollectModel"

    const-string/jumbo v4, "handleBookMarkResult success"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string/jumbo v3, "result"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 164
    .local v1, "result":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 165
    invoke-virtual {p0, v5}, Lamx;->a(I)V

    .line 182
    .end local v1    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 168
    .restart local v1    # "result":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v3, "userbookmark"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 169
    .local v2, "userMark":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    .line 170
    const-string/jumbo v3, "BookCollectModel"

    const-string/jumbo v4, "handleBookMarkResult systemMark is not null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v2}, Lamt;->d(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "markList":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    iget-object v3, p0, Lamx;->d:Lamq;

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lamx;->d:Lamq;

    invoke-virtual {v3, v0}, Lamq;->onCollectGetResult(Ljava/util/List;)V

    goto :goto_0

    .line 181
    .end local v0    # "markList":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    .end local v1    # "result":Lorg/json/JSONObject;
    .end local v2    # "userMark":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {p0, v5}, Lamx;->a(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 10
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "resultJson"    # Lorg/json/JSONObject;
    .param p4, "isAuto"    # Z

    .prologue
    const/16 v9, 0x3ed

    .line 193
    const-string/jumbo v7, "000000"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "success"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 194
    const-string/jumbo v7, "BookCollectModel"

    const-string/jumbo v8, "handleAddBookMarkResult success"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string/jumbo v7, "result"

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 197
    .local v6, "result":Lorg/json/JSONObject;
    if-nez v6, :cond_1

    .line 198
    iget-object v7, p0, Lamx;->d:Lamq;

    if-eqz v7, :cond_0

    .line 199
    invoke-virtual {p0, v9}, Lamx;->a(I)V

    .line 250
    .end local v6    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v6    # "result":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v7, "bookmarkinfo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 206
    .local v5, "info":Lorg/json/JSONObject;
    if-eqz v5, :cond_6

    .line 207
    const-string/jumbo v7, "BookCollectModel"

    const-string/jumbo v8, "handleAddBookMarkResult info is not null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string/jumbo v7, "contentid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "contentId":Ljava/lang/String;
    const-string/jumbo v7, "cid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "cId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 213
    :cond_2
    invoke-virtual {p0, v9}, Lamx;->a(I)V

    goto :goto_0

    .line 216
    :cond_3
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v7

    invoke-virtual {v7, v4}, Lamk;->d(Ljava/lang/String;)Lamo;

    move-result-object v1

    .line 217
    .local v1, "bookMarkInfo":Lamo;
    invoke-static {v5}, Lamt;->a(Lorg/json/JSONObject;)Lamo$a;

    move-result-object v0

    .line 218
    .local v0, "bookMark":Lamo$a;
    if-nez v1, :cond_4

    .line 220
    new-instance v1, Lamo;

    .end local v1    # "bookMarkInfo":Lamo;
    invoke-direct {v1}, Lamo;-><init>()V

    .line 221
    .restart local v1    # "bookMarkInfo":Lamo;
    invoke-virtual {v1, v4}, Lamo;->a(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, v3}, Lamo;->c(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v7, "contentname"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lamo;->b(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v7, "coverpic"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lamo;->f(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v7, "desc"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lamo;->g(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v7, "author"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lamo;->e(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v7, "detailurl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lamo;->d(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v7, "chaptername"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lamo$a;->a(Ljava/lang/String;)V

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v2, "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {v1, v2}, Lamo;->a(Ljava/util/List;)V

    .line 239
    :goto_1
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v7

    invoke-virtual {v7, v1}, Lamk;->a(Lamo;)I

    .line 240
    iget-object v7, p0, Lamx;->d:Lamq;

    if-eqz v7, :cond_0

    .line 241
    iget-object v7, p0, Lamx;->d:Lamq;

    invoke-virtual {v7, v4, v3, v0}, Lamq;->onAddCollectResult(Ljava/lang/String;Ljava/lang/String;Lamo$a;)V

    goto/16 :goto_0

    .line 235
    .end local v2    # "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .restart local v2    # "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v1, v2}, Lamo;->a(Ljava/util/List;)V

    goto :goto_1

    .line 246
    .end local v0    # "bookMark":Lamo$a;
    .end local v1    # "bookMarkInfo":Lamo;
    .end local v2    # "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    .end local v3    # "cId":Ljava/lang/String;
    .end local v4    # "contentId":Ljava/lang/String;
    .end local v5    # "info":Lorg/json/JSONObject;
    .end local v6    # "result":Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v7, "010001"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "fail"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 247
    const-string/jumbo v7, "BookCollectModel"

    const-string/jumbo v8, "handleContentInfoResult get content info fail"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_6
    invoke-virtual {p0, v9}, Lamx;->a(I)V

    goto/16 :goto_0
.end method

.method private b(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 254
    const/16 v0, 0x3e9

    .line 256
    .local v0, "errorCode":I
    packed-switch p1, :pswitch_data_0

    .line 270
    :goto_0
    return v0

    .line 258
    :pswitch_0
    const/16 v0, 0x3ef

    .line 259
    goto :goto_0

    .line 261
    :pswitch_1
    const/16 v0, 0x3ed

    .line 262
    goto :goto_0

    .line 264
    :pswitch_2
    const/16 v0, 0x3ee

    .line 265
    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lamx;)Lamq;
    .locals 1
    .param p0, "x0"    # Lamx;

    .prologue
    .line 30
    iget-object v0, p0, Lamx;->d:Lamq;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "BookCollectModel"

    const-string/jumbo v1, "requestCollectInfo "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lamx;->a:Lamw;

    invoke-virtual {v0}, Lamw;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "chapterId"    # Ljava/lang/String;
    .param p3, "chapterName"    # Ljava/lang/String;
    .param p4, "position"    # I

    .prologue
    .line 53
    const-string/jumbo v0, "BookCollectModel"

    const-string/jumbo v1, "requestAddCollect "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gez p4, :cond_1

    .line 55
    :cond_0
    const-wide/16 v0, -0x1

    .line 58
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lamx;->b:Lamw;

    invoke-virtual {v0, p1, p2, p3, p4}, Lamw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "BookCollectModel"

    const-string/jumbo v1, "requestRemoveBookMark "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    const-wide/16 v0, -0x1

    .line 68
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lamx;->c:Lamw;

    invoke-virtual {v0, p1}, Lamw;->a(Ljava/util/List;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lamx;->d:Lamq;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lamx;->d:Lamq;

    invoke-virtual {v0, p1}, Lamq;->onError(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lamx;->a:Lamw;

    invoke-virtual {v0}, Lamw;->cancelRequest()V

    .line 281
    iget-object v0, p0, Lamx;->b:Lamw;

    invoke-virtual {v0}, Lamw;->cancelRequest()V

    .line 282
    iget-object v0, p0, Lamx;->c:Lamw;

    invoke-virtual {v0}, Lamw;->cancelRequest()V

    .line 283
    return-void
.end method
