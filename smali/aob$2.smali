.class Laob$2;
.super Ljava/lang/Object;
.source "MiguAuthHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laob;


# direct methods
.method constructor <init>(Laob;)V
    .locals 0
    .param p1, "this$0"    # Laob;

    .prologue
    .line 299
    iput-object p1, p0, Laob$2;->a:Laob;

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
    .line 303
    if-eqz p2, :cond_5

    if-nez p1, :cond_5

    .line 304
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual/range {p2 .. p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v13

    .line 305
    .local v13, "response":Ljava/lang/String;
    const-string/jumbo v18, "MiguAuthHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "login: response is: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 308
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 309
    .local v7, "json":Lorg/json/JSONObject;
    const-string/jumbo v18, "error_code"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "error_code":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string/jumbo v18, "000000"

    .line 311
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 312
    const-string/jumbo v18, "result"

    .line 313
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 314
    .local v14, "resultJson":Lorg/json/JSONObject;
    if-eqz v14, :cond_5

    .line 316
    invoke-static {}, Lmz;->g()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v9

    .line 317
    .local v9, "oldInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    const-string/jumbo v18, "caller"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "caller":Ljava/lang/String;
    const-string/jumbo v18, "currenttime"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "currenttime":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 320
    invoke-virtual {v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenType()I

    move-result v18

    const/16 v19, 0x68

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 321
    invoke-virtual {v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenType()I

    move-result v18

    const/16 v19, 0x67

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 322
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Laob;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 323
    .local v8, "newMobile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    invoke-virtual {v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getMobile()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getMobileKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Laob;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 324
    .local v10, "oldMobile":Ljava/lang/String;
    const-string/jumbo v18, "MiguAuthHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "get new Mobile is: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",old Mobile is:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 326
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    const/16 v19, 0x7d1

    invoke-static/range {v18 .. v19}, Laob;->a(Laob;I)V

    .line 416
    .end local v3    # "caller":Ljava/lang/String;
    .end local v4    # "currenttime":Ljava/lang/String;
    .end local v6    # "error_code":Ljava/lang/String;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "newMobile":Ljava/lang/String;
    .end local v9    # "oldInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v10    # "oldMobile":Ljava/lang/String;
    .end local v13    # "response":Ljava/lang/String;
    .end local v14    # "resultJson":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 331
    .restart local v3    # "caller":Ljava/lang/String;
    .restart local v4    # "currenttime":Ljava/lang/String;
    .restart local v6    # "error_code":Ljava/lang/String;
    .restart local v7    # "json":Lorg/json/JSONObject;
    .restart local v9    # "oldInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .restart local v13    # "response":Ljava/lang/String;
    .restart local v14    # "resultJson":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v18, "token"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 332
    .local v15, "token":Ljava/lang/String;
    const-string/jumbo v18, "tokenexpire"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 333
    .local v16, "tokenexpire":Ljava/lang/String;
    const-string/jumbo v18, "operator"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 334
    .local v11, "operator":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 335
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    const/16 v19, 0x7d8

    invoke-static/range {v18 .. v19}, Laob;->a(Laob;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    .end local v3    # "caller":Ljava/lang/String;
    .end local v4    # "currenttime":Ljava/lang/String;
    .end local v6    # "error_code":Ljava/lang/String;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v9    # "oldInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v11    # "operator":Ljava/lang/String;
    .end local v14    # "resultJson":Lorg/json/JSONObject;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "tokenexpire":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 409
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "MiguAuthHelper"

    const-string/jumbo v19, "login: Json analyse error"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v13    # "response":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Laob;->e(Laob;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    const/16 v19, 0x7d8

    invoke-static/range {v18 .. v19}, Laob;->a(Laob;I)V

    goto :goto_0

    .line 339
    .restart local v3    # "caller":Ljava/lang/String;
    .restart local v4    # "currenttime":Ljava/lang/String;
    .restart local v6    # "error_code":Ljava/lang/String;
    .restart local v7    # "json":Lorg/json/JSONObject;
    .restart local v9    # "oldInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .restart local v11    # "operator":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    .restart local v14    # "resultJson":Lorg/json/JSONObject;
    .restart local v15    # "token":Ljava/lang/String;
    .restart local v16    # "tokenexpire":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string/jumbo v18, "passid"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 340
    .local v12, "passid":Ljava/lang/String;
    const-string/jumbo v18, "usessionid"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 341
    .local v17, "usessionid":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-direct {v2}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;-><init>()V

    .line 342
    .local v2, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual {v2, v15}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2, v11}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setOperateType(Ljava/lang/String;)V

    .line 345
    const/16 v18, 0x68

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenType(I)V

    .line 347
    invoke-virtual {v2, v12}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setPassid(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setUsessionid(Ljava/lang/String;)V

    .line 350
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 351
    invoke-virtual {v2, v3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setMobile(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2, v4}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setMobileKey(Ljava/lang/String;)V

    .line 354
    :cond_7
    invoke-static {}, Lil;->a()Lil;

    move-result-object v18

    const-string/jumbo v19, "com.iflytek.cmccIFLY_MIGU_AUTH_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Lil;->a(Ljava/lang/String;J)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Laob;->a(Laob;Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    goto/16 :goto_0

    .line 358
    .end local v2    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v3    # "caller":Ljava/lang/String;
    .end local v4    # "currenttime":Ljava/lang/String;
    .end local v9    # "oldInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v11    # "operator":Ljava/lang/String;
    .end local v12    # "passid":Ljava/lang/String;
    .end local v14    # "resultJson":Lorg/json/JSONObject;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "tokenexpire":Ljava/lang/String;
    .end local v17    # "usessionid":Ljava/lang/String;
    :cond_8
    const-string/jumbo v18, "019002"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 359
    const-string/jumbo v18, "MiguAuthHelper"

    const-string/jumbo v19, "migu sdk get ks errorCode,clean sso"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Laob;->b(Laob;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Laob;->a(Laob;Z)Z

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Laob;->d(Laob;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v18

    new-instance v19, Laob$2$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Laob$2$1;-><init>(Laob$2;)V

    invoke-interface/range {v18 .. v19}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->cleanSSO(Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_1

    .line 386
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Laob;->c(Laob;Z)Z

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Laob;->d(Laob;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v18

    new-instance v19, Laob$2$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Laob$2$2;-><init>(Laob$2;)V

    invoke-interface/range {v18 .. v19}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->cleanSSO(Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_1

    .line 403
    :cond_a
    const-string/jumbo v18, "MiguAuthHelper"

    const-string/jumbo v19, "migu sdk get error errorCode"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Laob$2;->a:Laob;

    move-object/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v18 .. v19}, Laob;->a(Laob;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
