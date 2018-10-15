.class public Lqy;
.super Lqv;
.source "CommandWordModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqv",
        "<",
        "Lqx;",
        "Lqx;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lqv;-><init>()V

    .line 25
    iput-object p1, p0, Lqy;->a:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<font color=\"#9AA0A9\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u660e\u5929\u5929\u6c14\u600e\u4e48\u6837"

    .line 34
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u6765\u4e00\u9996\u5468\u6770\u4f26\u7684\u6b4c"

    .line 35
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u7ffb\u8bd1\u4e00\u4e0b\u201c\u8fd9\u4e2a\u591a\u5c11\u94b1\u201d"

    .line 36
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u6211\u60f3\u542c\u4eba\u6c11\u7684\u540d\u4e49"

    .line 37
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u6253\u7535\u8bdd\u7ed9\u9ea6\u5f53\u52b3"

    .line 38
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u63d0\u9192\u6211\u660e\u5929\u4e0b\u5348\u4e09\u70b9\u5f00\u4f1a"

    .line 39
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u6211\u8981\u4e70\u53bb\u5317\u4eac\u7684\u673a\u7968"

    .line 40
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u6253\u5f00\u5fae\u4fe1"

    .line 41
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u79d1\u5927\u8baf\u98de\u7684\u80a1\u4ef7"

    .line 42
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u5468\u672b\u4f1a\u4e0d\u4f1a\u4e0b\u96e8"

    .line 43
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u7ed9\u5988\u5988\u53d1\u77ed\u4fe1"

    .line 44
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u7ebd\u7ea6\u73b0\u5728\u51e0\u70b9"

    .line 45
    invoke-direct {p0, v2}, Lqy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lqy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lqy;

    .prologue
    .line 21
    invoke-direct {p0}, Lqy;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lqy;Ljava/lang/String;)Lqx;
    .locals 1
    .param p0, "x0"    # Lqy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lqy;->b(Ljava/lang/String;)Lqx;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lqx;
    .locals 14
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 86
    new-instance v0, Lqx;

    invoke-direct {v0}, Lqx;-><init>()V

    .line 88
    .local v0, "commandWordEntity":Lqx;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v5, "jsonRes":Lorg/json/JSONObject;
    const-string/jumbo v11, "id"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "id":Ljava/lang/String;
    const-string/jumbo v11, "content"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "content":Ljava/lang/String;
    const-string/jumbo v11, "wordings"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 92
    .local v7, "words":Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lqx;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v4}, Lqx;->b(Ljava/lang/String;)V

    .line 94
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v6, "tempWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 96
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "content"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 99
    :cond_1
    invoke-direct {p0}, Lqy;->a()Ljava/util/List;

    move-result-object v6

    .line 101
    :cond_2
    invoke-virtual {v0, v6}, Lqx;->a(Ljava/util/List;)V

    .line 102
    const-string/jumbo v11, "self_request_time"

    const-wide/16 v12, 0x0

    invoke-virtual {v5, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 103
    .local v8, "time":J
    invoke-virtual {v0, v8, v9}, Lqx;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "commandWordEntity":Lqx;
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "jsonRes":Lorg/json/JSONObject;
    .end local v6    # "tempWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "words":Lorg/json/JSONArray;
    .end local v8    # "time":J
    :goto_1
    return-object v0

    .line 105
    .restart local v0    # "commandWordEntity":Lqx;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v10

    .line 107
    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lqv$a;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lqx;

    invoke-virtual {p0, p1, p2}, Lqy;->a(Lqx;Lqv$a;)V

    return-void
.end method

.method public a(Lqx;Lqv$a;)V
    .locals 4
    .param p1, "reqParams"    # Lqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqx;",
            "Lqv$a",
            "<",
            "Lqx;",
            "Lqx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "commandWordDataModeListener":Lqv$a;, "Lqv$a<Lqx;Lqx;>;"
    iget-object v1, p0, Lqy;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    if-eqz p2, :cond_0

    .line 53
    new-instance v0, Lqx;

    invoke-direct {v0}, Lqx;-><init>()V

    .line 54
    .local v0, "commandWordEntity":Lqx;
    invoke-direct {p0}, Lqy;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqx;->a(Ljava/util/List;)V

    .line 55
    invoke-interface {p2, v0}, Lqv$a;->a(Ljava/lang/Object;)V

    .line 83
    .end local v0    # "commandWordEntity":Lqx;
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v1, Lrk;

    iget-object v2, p0, Lqy;->a:Landroid/content/Context;

    new-instance v3, Lqy$1;

    invoke-direct {v3, p0, p2}, Lqy$1;-><init>(Lqy;Lqv$a;)V

    invoke-direct {v1, v2, v3}, Lrk;-><init>(Landroid/content/Context;Lqv$a;)V

    .line 81
    invoke-virtual {v1}, Lrk;->a()J

    goto :goto_0
.end method
