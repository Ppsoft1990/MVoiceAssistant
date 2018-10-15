.class public Lald;
.super Ljava/lang/Object;
.source "ListenWellResultHandler.java"


# direct methods
.method public static a(Ljava/lang/String;)Lale;
    .locals 20
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v13, "jsonObject":Lorg/json/JSONObject;
    if-nez v13, :cond_0

    .line 31
    const/4 v8, 0x0

    .line 77
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v8

    .line 33
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v18, "result"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 34
    .local v6, "contentObject":Lorg/json/JSONObject;
    if-nez v6, :cond_1

    .line 35
    const/4 v8, 0x0

    goto :goto_0

    .line 37
    :cond_1
    const-string/jumbo v18, "more"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 38
    .local v15, "moreObject":Lorg/json/JSONObject;
    const-string/jumbo v18, "linkurl"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 39
    .local v16, "moreUrl":Ljava/lang/String;
    const-string/jumbo v18, "content"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 40
    .local v2, "array":Lorg/json/JSONArray;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 41
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 42
    .local v4, "book":Lorg/json/JSONObject;
    const-string/jumbo v18, "author"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "author":Ljava/lang/String;
    const-string/jumbo v18, "bookname"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "bookName":Ljava/lang/String;
    const-string/jumbo v18, "coverurl"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "coverUrl":Ljava/lang/String;
    const-string/jumbo v18, "description"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 46
    .local v9, "description":Ljava/lang/String;
    const-string/jumbo v18, "display"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 47
    .local v10, "display":Ljava/lang/String;
    const-string/jumbo v18, "linkurl"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 48
    .local v14, "linkUrl":Ljava/lang/String;
    const-string/jumbo v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 49
    .local v17, "title":Ljava/lang/String;
    const-string/jumbo v18, "id"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 50
    .local v12, "id":I
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 51
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 52
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 53
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 54
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 55
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    if-eqz v12, :cond_2

    .line 57
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 58
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 59
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 61
    :cond_3
    new-instance v8, Lale;

    invoke-direct {v8}, Lale;-><init>()V

    .line 62
    .local v8, "data":Lale;
    invoke-virtual {v8, v12}, Lale;->a(I)V

    .line 63
    invoke-virtual {v8, v10}, Lale;->h(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v8, v3}, Lale;->g(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v8, v9}, Lale;->f(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v8, v7}, Lale;->c(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v8, v5}, Lale;->d(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lale;->e(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v8, v14}, Lale;->b(Ljava/lang/String;)V

    .line 70
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lale;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 75
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "author":Ljava/lang/String;
    .end local v4    # "book":Lorg/json/JSONObject;
    .end local v5    # "bookName":Ljava/lang/String;
    .end local v6    # "contentObject":Lorg/json/JSONObject;
    .end local v7    # "coverUrl":Ljava/lang/String;
    .end local v8    # "data":Lale;
    .end local v9    # "description":Ljava/lang/String;
    .end local v10    # "display":Ljava/lang/String;
    .end local v12    # "id":I
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "linkUrl":Ljava/lang/String;
    .end local v15    # "moreObject":Lorg/json/JSONObject;
    .end local v16    # "moreUrl":Ljava/lang/String;
    .end local v17    # "title":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 76
    .local v11, "e":Lorg/json/JSONException;
    const-string/jumbo v18, "ListenWellResultHandler"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 72
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v6    # "contentObject":Lorg/json/JSONObject;
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    .restart local v15    # "moreObject":Lorg/json/JSONObject;
    .restart local v16    # "moreUrl":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
