.class public Lamw;
.super Lvx;
.source "BookCollectBizHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "listener"    # Lyn;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://ydclient.voicecloud.cn/vaclient/do?c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    .end local p2    # "cmd":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lamw;->setNeedGZip(Z)V

    .line 33
    return-void

    .line 31
    .restart local p2    # "cmd":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 5

    .prologue
    .line 40
    const-string/jumbo v2, "BookCollectBizHelper"

    const-string/jumbo v3, "sendCollectGetRequest() "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "marktype"

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const-string/jumbo v2, "1144"

    const/16 v3, 0x7f

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lamw;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "BookCollectBizHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 5
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "chapterId"    # Ljava/lang/String;
    .param p3, "chapterName"    # Ljava/lang/String;
    .param p4, "position"    # I

    .prologue
    .line 57
    const-string/jumbo v2, "BookCollectBizHelper"

    const-string/jumbo v3, "addCollect()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "chaptername"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo v2, "marktype"

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v2, "contentid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string/jumbo v2, "chapterid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v2, "position"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const-string/jumbo v2, "1142"

    const/16 v3, 0x7d

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lamw;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "BookCollectBizHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public a(Ljava/util/List;)J
    .locals 7
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
    .line 77
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "BookCollectBizHelper"

    const-string/jumbo v5, "subBookMarkRequest() "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .local v2, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 81
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "BookCollectBizHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const-wide/16 v4, -0x1

    .line 89
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-wide v4

    .line 84
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "resourceids"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    const-string/jumbo v4, "1143"

    const/16 v5, 0x7e

    const-string/jumbo v6, "3.0"

    invoke-virtual {p0, v4, v5, v2, v6}, Lamw;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1
.end method
