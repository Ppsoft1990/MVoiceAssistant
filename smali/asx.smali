.class public Lasx;
.super Ljava/lang/Object;
.source "BlcBusinessMapTranslationHelper.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "extraInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    .line 27
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v1, "extraMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 31
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .end local v2    # "json":Lorg/json/JSONObject;
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 34
    .local v5, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 35
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 36
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 39
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 40
    .end local v3    # "json":Lorg/json/JSONObject;
    .local v0, "ex":Lorg/json/JSONException;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :goto_2
    const-string/jumbo v7, "BlcBusinessMapTranslationHelper"

    const-string/jumbo v8, "extraInfo2Map() exception"

    invoke-static {v7, v8, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "ex":Lorg/json/JSONException;
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v5    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    move-object v2, v3

    .line 41
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 39
    .end local v5    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    goto :goto_2
.end method
