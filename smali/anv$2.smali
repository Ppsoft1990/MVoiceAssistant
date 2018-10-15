.class Lanv$2;
.super Ljava/lang/Object;
.source "BookTokenHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanv;


# direct methods
.method constructor <init>(Lanv;)V
    .locals 0
    .param p1, "this$0"    # Lanv;

    .prologue
    .line 237
    iput-object p1, p0, Lanv$2;->a:Lanv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 22
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 241
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 242
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual/range {p2 .. p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v15

    .line 243
    .local v15, "response":Ljava/lang/String;
    const-string/jumbo v18, "BookTokenHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "read token response: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 246
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    .local v8, "json":Lorg/json/JSONObject;
    const-string/jumbo v18, "error_code"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "error_code":Ljava/lang/String;
    const-string/jumbo v18, "desc"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "desc":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string/jumbo v18, "000000"

    .line 250
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 251
    const-string/jumbo v18, "result"

    .line 252
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 253
    .local v16, "resultJson":Lorg/json/JSONObject;
    if-eqz v16, :cond_1

    .line 254
    const-string/jumbo v18, "expiretime"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 255
    .local v6, "expireTime":J
    const-string/jumbo v18, "userid"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 256
    .local v17, "userId":Ljava/lang/String;
    const-string/jumbo v18, "longtoken"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "longToken":Ljava/lang/String;
    const-string/jumbo v18, "identityid"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 258
    .local v13, "readIdentityId":Ljava/lang/String;
    const-string/jumbo v18, "msisdn"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 259
    .local v14, "readMsisdn":Ljava/lang/String;
    const-string/jumbo v18, "accountname"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 260
    .local v12, "readAccountName":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lanv;->b(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lanv;->f(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lanv;->a(J)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lanv;->c(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lanv;->d(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lanv;->e(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lanv;->i()V

    .line 269
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v18

    new-instance v19, Lanu;

    invoke-direct/range {v19 .. v19}, Lanu;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lanv;->a(Lanv;Z)Z

    .line 314
    .end local v3    # "desc":Ljava/lang/String;
    .end local v5    # "error_code":Ljava/lang/String;
    .end local v6    # "expireTime":J
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v9    # "longToken":Ljava/lang/String;
    .end local v12    # "readAccountName":Ljava/lang/String;
    .end local v13    # "readIdentityId":Ljava/lang/String;
    .end local v14    # "readMsisdn":Ljava/lang/String;
    .end local v15    # "response":Ljava/lang/String;
    .end local v16    # "resultJson":Lorg/json/JSONObject;
    .end local v17    # "userId":Ljava/lang/String;
    :goto_0
    return-void

    .line 274
    .restart local v3    # "desc":Ljava/lang/String;
    .restart local v5    # "error_code":Ljava/lang/String;
    .restart local v8    # "json":Lorg/json/JSONObject;
    .restart local v15    # "response":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string/jumbo v18, "010102"

    .line 275
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 276
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    move-object v2, v3

    .line 278
    .local v2, "defaultToast":Ljava/lang/String;
    :goto_1
    const-string/jumbo v18, "BookTokenHelper"

    const-string/jumbo v19, "show toast"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lanv;->a(Lanv;)Lanv$a;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lanv;->a(Lanv;)Lanv$a;

    move-result-object v18

    new-instance v19, Lanv$2$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lanv$2$1;-><init>(Lanv$2;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lanv$a;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v2    # "defaultToast":Ljava/lang/String;
    .end local v3    # "desc":Ljava/lang/String;
    .end local v5    # "error_code":Ljava/lang/String;
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v15    # "response":Ljava/lang/String;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lanv;->a(Lanv;Z)Z

    goto :goto_0

    .line 276
    .restart local v3    # "desc":Ljava/lang/String;
    .restart local v5    # "error_code":Ljava/lang/String;
    .restart local v8    # "json":Lorg/json/JSONObject;
    .restart local v15    # "response":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "\u624b\u673a\u53f7\u7ed1\u5b9a\u4e2d\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5..."

    goto :goto_1

    .line 287
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string/jumbo v18, "010103"

    .line 288
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 290
    const-string/jumbo v18, "BookTokenHelper"

    const-string/jumbo v19, "show window"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-boolean v18, Laoc;->a:Z

    if-eqz v18, :cond_5

    .line 294
    invoke-static {}, Lil;->a()Lil;

    move-result-object v18

    const-string/jumbo v19, "com.iflytek.cmccIFLY_BOOKTOKEN_WINDOW_TIME"

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v21}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v10

    .line 295
    .local v10, "lastAuthTime":J
    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-eqz v18, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lanv$2;->a:Lanv;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lanv;->d(Lanv;)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_4

    .line 296
    const-string/jumbo v18, "BookTokenHelper"

    const-string/jumbo v19, "show window not enough 24H"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 308
    .end local v3    # "desc":Ljava/lang/String;
    .end local v5    # "error_code":Ljava/lang/String;
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v10    # "lastAuthTime":J
    :catch_0
    move-exception v4

    .line 309
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "BookTokenHelper"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 298
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "desc":Ljava/lang/String;
    .restart local v5    # "error_code":Ljava/lang/String;
    .restart local v8    # "json":Lorg/json/JSONObject;
    .restart local v10    # "lastAuthTime":J
    :cond_4
    :try_start_2
    const-string/jumbo v18, "BookTokenHelper"

    const-string/jumbo v19, "show window enough 24H"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v18

    new-instance v19, Laok;

    const-string/jumbo v20, "NEED_CONTACT"

    invoke-direct/range {v19 .. v20}, Laok;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 302
    invoke-static {}, Lil;->a()Lil;

    move-result-object v18

    const-string/jumbo v19, "com.iflytek.cmccIFLY_BOOKTOKEN_WINDOW_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Lil;->a(Ljava/lang/String;J)V

    goto/16 :goto_2

    .line 305
    .end local v10    # "lastAuthTime":J
    :cond_5
    const-string/jumbo v18, "BookTokenHelper"

    const-string/jumbo v19, "splash not end,not show"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method
