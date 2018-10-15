.class Laqb$1;
.super Ljava/lang/Object;
.source "MusicBizHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqb;


# direct methods
.method constructor <init>(Laqb;)V
    .locals 0
    .param p1, "this$0"    # Laqb;

    .prologue
    .line 181
    iput-object p1, p0, Laqb$1;->a:Laqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 23
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Laqb$a;->onResult()V

    :cond_0
    move-object/from16 v4, p2

    .line 189
    check-cast v4, Lwa;

    .line 190
    .local v4, "business":Lwa;
    if-nez v4, :cond_2

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    invoke-virtual {v4}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v17

    .line 194
    .local v17, "response":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 197
    const/16 v18, 0x0

    .line 200
    .local v18, "resultCode":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->b(Laqb;)J

    move-result-wide v20

    cmp-long v20, v20, p3

    if-nez v20, :cond_4

    .line 201
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .local v13, "json":Lorg/json/JSONObject;
    if-eqz v13, :cond_3

    .line 203
    const-string/jumbo v20, "error_code"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 204
    const-string/jumbo v20, "status"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 205
    .local v19, "status":Ljava/lang/String;
    const-string/jumbo v20, "000000"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const-string/jumbo v20, "success"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 206
    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 207
    .local v7, "collectedObj":Lorg/json/JSONObject;
    const-string/jumbo v20, "collected"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 208
    .local v15, "mCurrentFavor":Z
    if-eqz v15, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Laqb;->a(Laqb;Lorg/json/JSONObject;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v10

    .line 211
    .local v10, "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Laqg;->a(Lcom/iflytek/viafly/music/business/entry/MusicFavor;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Laqb$a;->onQueryCollect(ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 295
    .end local v7    # "collectedObj":Lorg/json/JSONObject;
    .end local v10    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    .end local v13    # "json":Lorg/json/JSONObject;
    .end local v15    # "mCurrentFavor":Z
    .end local v19    # "status":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 296
    .local v9, "e":Lorg/json/JSONException;
    const-string/jumbo v20, "MusicBizHelper"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 219
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v13    # "json":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Laqb$a;->onQueryCollect(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 222
    .end local v13    # "json":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->c(Laqb;)J

    move-result-wide v20

    cmp-long v20, v20, p3

    if-nez v20, :cond_6

    .line 224
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v13    # "json":Lorg/json/JSONObject;
    if-eqz v13, :cond_5

    .line 226
    const-string/jumbo v20, "error_code"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 227
    const-string/jumbo v20, "status"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 228
    .restart local v19    # "status":Ljava/lang/String;
    const-string/jumbo v20, "000000"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    const-string/jumbo v20, "success"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 229
    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 230
    .local v11, "favorResult":Lorg/json/JSONObject;
    const-string/jumbo v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 231
    .local v8, "data":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_5

    .line 232
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 233
    .local v16, "obj":Lorg/json/JSONObject;
    const-string/jumbo v20, "lxsongid"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 234
    .local v14, "lxSongId":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Laqb;->a(Laqb;Lorg/json/JSONObject;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v10

    .line 237
    .restart local v10    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Laqg;->a(Lcom/iflytek/viafly/music/business/entry/MusicFavor;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Laqb$a;->onAddCollect(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 247
    .end local v8    # "data":Lorg/json/JSONArray;
    .end local v10    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    .end local v11    # "favorResult":Lorg/json/JSONObject;
    .end local v14    # "lxSongId":Ljava/lang/String;
    .end local v16    # "obj":Lorg/json/JSONObject;
    .end local v19    # "status":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Laqb$a;->onAddCollect(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 250
    .end local v13    # "json":Lorg/json/JSONObject;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->d(Laqb;)J

    move-result-wide v20

    cmp-long v20, v20, p3

    if-nez v20, :cond_a

    .line 252
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    .restart local v13    # "json":Lorg/json/JSONObject;
    if-eqz v13, :cond_9

    .line 254
    const-string/jumbo v20, "error_code"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 255
    const-string/jumbo v20, "status"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 256
    .restart local v19    # "status":Ljava/lang/String;
    const-string/jumbo v20, "000000"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const-string/jumbo v20, "success"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 257
    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 258
    .restart local v11    # "favorResult":Lorg/json/JSONObject;
    const-string/jumbo v20, "lxsongids"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 259
    .restart local v8    # "data":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_8

    .line 260
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v14

    .line 261
    .restart local v14    # "lxSongId":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 263
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Laqg;->a(Ljava/lang/String;)V

    .line 259
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 266
    .end local v14    # "lxSongId":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Laqb$a;->onDeleteCollect(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 272
    .end local v8    # "data":Lorg/json/JSONArray;
    .end local v11    # "favorResult":Lorg/json/JSONObject;
    .end local v12    # "i":I
    .end local v19    # "status":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->a(Laqb;)Laqb$a;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Laqb$a;->onDeleteCollect(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 275
    .end local v13    # "json":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Laqb;->e(Laqb;)J

    move-result-wide v20

    cmp-long v20, v20, p3

    if-nez v20, :cond_1

    .line 276
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v13    # "json":Lorg/json/JSONObject;
    if-eqz v13, :cond_1

    .line 278
    const-string/jumbo v20, "error_code"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 279
    const-string/jumbo v20, "status"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 280
    .restart local v19    # "status":Ljava/lang/String;
    const-string/jumbo v20, "000000"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string/jumbo v20, "success"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 281
    const-string/jumbo v20, "result"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 282
    .restart local v7    # "collectedObj":Lorg/json/JSONObject;
    const-string/jumbo v20, "collectmusic"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 283
    .local v6, "collectArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_b

    .line 284
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Laqg;->b()V

    .line 286
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_1

    .line 287
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 288
    .local v5, "collect":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Laqb$1;->a:Laqb;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Laqb;->a(Laqb;Lorg/json/JSONObject;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v10

    .line 290
    .restart local v10    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Laqg;->a(Lcom/iflytek/viafly/music/business/entry/MusicFavor;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    add-int/lit8 v12, v12, 0x1

    goto :goto_2
.end method
