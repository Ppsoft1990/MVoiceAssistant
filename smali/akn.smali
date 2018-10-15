.class public Lakn;
.super Ljava/lang/Object;
.source "ListenBookResultHandler.java"


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lakn;->a:Ljava/util/HashSet;

    return-void
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 14
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    .line 60
    :cond_0
    const/4 v5, 0x0

    .line 92
    :cond_1
    :goto_0
    return-object v5

    .line 62
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v5, "mList":Ljava/util/List;, "Ljava/util/List<Lakp;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 64
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 65
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "id"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v9, "clickurl"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "clickurl":Ljava/lang/String;
    const-string/jumbo v9, "title"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "title":Ljava/lang/String;
    const-string/jumbo v9, "maturl"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "maturl":Ljava/lang/String;
    const-string/jumbo v9, "expirationtime"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "expirationtime":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 72
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gez v9, :cond_4

    .line 63
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    :cond_4
    iget-object v9, p0, Lakn;->a:Ljava/util/HashSet;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 78
    new-instance v7, Lakp;

    invoke-direct {v7}, Lakp;-><init>()V

    .line 79
    .local v7, "recommendItemResult":Lakp;
    invoke-virtual {v7, v0}, Lakp;->b(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v7, v8}, Lakp;->c(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v7, v6}, Lakp;->e(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v7, v3}, Lakp;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v7, v1}, Lakp;->d(Ljava/lang/String;)V

    .line 84
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    .end local v0    # "clickurl":Ljava/lang/String;
    .end local v1    # "expirationtime":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "maturl":Ljava/lang/String;
    .end local v7    # "recommendItemResult":Lakp;
    .end local v8    # "title":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "ListenBookResultHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u63a8\u8350\u4f4did"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lakn;->a:Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v9, p0, Lakn;->a:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 89
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 90
    const/4 v5, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lako;
    .locals 7
    .param p1, "recommentResult"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 39
    if-nez p1, :cond_0

    move-object v2, v5

    .line 55
    :goto_0
    return-object v2

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 44
    .local v2, "mListenBookRecommendResult":Lako;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Lako;

    invoke-direct {v3}, Lako;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v2    # "mListenBookRecommendResult":Lako;
    .local v3, "mListenBookRecommendResult":Lako;
    :try_start_1
    const-string/jumbo v6, "ads"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-direct {p0, v6}, Lakn;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 47
    .local v4, "mRecommendItemResultsList":Ljava/util/List;, "Ljava/util/List<Lakp;>;"
    if-nez v4, :cond_1

    move-object v2, v5

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v3, v4}, Lako;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 54
    .end local v3    # "mListenBookRecommendResult":Lako;
    .restart local v2    # "mListenBookRecommendResult":Lako;
    goto :goto_0

    .line 51
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mRecommendItemResultsList":Ljava/util/List;, "Ljava/util/List<Lakp;>;"
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v5, "ListenBookResultHandler"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    const/4 v2, 0x0

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mListenBookRecommendResult":Lako;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "mListenBookRecommendResult":Lako;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "mListenBookRecommendResult":Lako;
    .restart local v2    # "mListenBookRecommendResult":Lako;
    goto :goto_1
.end method
