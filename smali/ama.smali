.class public Lama;
.super Ljava/lang/Object;
.source "SignUtil.java"


# direct methods
.method public static a(Lorg/json/JSONObject;)J
    .locals 2
    .param p0, "opCodeObject"    # Lorg/json/JSONObject;

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const-wide/16 v0, 0x0

    .line 81
    :goto_0
    return-wide v0

    :cond_0
    const-string/jumbo v0, "limittime"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "result"    # Ljava/lang/String;
    .param p1, "set"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 36
    const/4 v12, 0x0

    .line 69
    :goto_0
    return-object v12

    .line 39
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v3, "newOpCodesObject":Lorg/json/JSONObject;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 41
    .local v11, "opCodesArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .line 43
    .local v8, "oldOpCodesObject":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 45
    new-instance v8, Lorg/json/JSONObject;

    .end local v8    # "oldOpCodesObject":Lorg/json/JSONObject;
    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .restart local v8    # "oldOpCodesObject":Lorg/json/JSONObject;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 48
    invoke-virtual {v11, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 49
    .local v6, "object":Lorg/json/JSONObject;
    const-string/jumbo v12, "opcode"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, "opCode":Ljava/lang/String;
    const-string/jumbo v12, "limitrange"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "limitRange":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v10, "opCodeObject":Lorg/json/JSONObject;
    const-string/jumbo v12, "limitrange"

    invoke-virtual {v10, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    if-eqz v8, :cond_2

    .line 56
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 57
    .local v7, "oldOpCodeObject":Lorg/json/JSONObject;
    invoke-static {v7}, Lama;->a(Lorg/json/JSONObject;)J

    move-result-wide v4

    .line 58
    .local v4, "limitTime":J
    const-string/jumbo v12, "limittime"

    invoke-virtual {v10, v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 62
    .end local v4    # "limitTime":J
    .end local v7    # "oldOpCodeObject":Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    :cond_2
    const-string/jumbo v12, "limittime"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 66
    .end local v1    # "i":I
    .end local v2    # "limitRange":Ljava/lang/String;
    .end local v3    # "newOpCodesObject":Lorg/json/JSONObject;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v8    # "oldOpCodesObject":Lorg/json/JSONObject;
    .end local v9    # "opCode":Ljava/lang/String;
    .end local v10    # "opCodeObject":Lorg/json/JSONObject;
    .end local v11    # "opCodesArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v12, "SignUtil"

    const-string/jumbo v13, ""

    invoke-static {v12, v13, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v12, 0x0

    goto :goto_0

    .line 65
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "newOpCodesObject":Lorg/json/JSONObject;
    .restart local v8    # "oldOpCodesObject":Lorg/json/JSONObject;
    .restart local v11    # "opCodesArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 12
    .param p0, "opCode"    # Ljava/lang/String;
    .param p1, "opCodesObject"    # Lorg/json/JSONObject;
    .param p2, "expireTime"    # I

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object p1, v4

    .line 111
    .end local p1    # "opCodesObject":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object p1

    .line 97
    .restart local p1    # "opCodesObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 98
    .local v1, "opCodeObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 100
    const/4 v5, -0x1

    if-eq p2, v5, :cond_3

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, p2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .line 105
    .local v2, "lastMillis":J
    :goto_1
    const-string/jumbo v5, "limittime"

    invoke-virtual {v1, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v1    # "opCodeObject":Lorg/json/JSONObject;
    .end local v2    # "lastMillis":J
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "SignUtil"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v4

    .line 111
    goto :goto_0

    .line 103
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "opCodeObject":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    invoke-static {}, Lbaa;->a()J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .restart local v2    # "lastMillis":J
    goto :goto_1
.end method
