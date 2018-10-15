.class public Lcom/baidu/aiupdatesdk/obf/aa;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public static a([BLjava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "responseBody"    # [B
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    if-nez p0, :cond_1

    .line 26
    const/4 v1, 0x0

    .line 42
    :cond_0
    :goto_0
    return-object v1

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    .local v1, "result":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/baidu/aiupdatesdk/obf/aa;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "jsonString":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    :cond_2
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 39
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_0

    .line 40
    move-object v1, v0

    .local v1, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v1

    .line 58
    :cond_1
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v2

    .line 69
    :cond_1
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    :try_start_0
    sget-object v3, Lcom/baidu/aiupdatesdk/obf/m;->a:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "stringBytes"    # [B
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 47
    if-nez p0, :cond_0

    .line 49
    :goto_0
    return-object v1

    .line 47
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method
