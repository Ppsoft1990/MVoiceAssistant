.class Lanv$3;
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
    .line 318
    iput-object p1, p0, Lanv$3;->a:Lanv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 14
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 322
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 323
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual/range {p2 .. p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "response":Ljava/lang/String;
    const-string/jumbo v11, "BookTokenHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "response is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 327
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 329
    const-string/jumbo v11, "error_code"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "result_code":Ljava/lang/String;
    const-string/jumbo v11, "status"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "status":Ljava/lang/String;
    const-string/jumbo v11, "000000"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "success"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 332
    const-string/jumbo v11, "result"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 333
    .local v5, "resultJson":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 334
    const-string/jumbo v11, "tokenexpire"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 335
    .local v10, "tokenExpire":Ljava/lang/String;
    const-string/jumbo v11, "logintype"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 336
    .local v3, "loginType":I
    const-string/jumbo v11, "stoken"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, "stoken":Ljava/lang/String;
    const-string/jumbo v11, "token"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 338
    .local v9, "token":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 339
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 340
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-direct {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;-><init>()V

    .line 341
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual {v0, v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, v3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setLoginType(I)V

    .line 343
    invoke-virtual {v0, v10}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 345
    invoke-static {v0}, Lmz;->c(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 346
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 348
    iget-object v11, p0, Lanv$3;->a:Lanv;

    invoke-static {v11, v8}, Lanv;->a(Lanv;Ljava/lang/String;)V

    .line 349
    iget-object v11, p0, Lanv$3;->a:Lanv;

    invoke-virtual {v11, v8}, Lanv;->h(Ljava/lang/String;)V

    .line 367
    .end local v0    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "loginType":I
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    .end local v6    # "result_code":Ljava/lang/String;
    .end local v7    # "status":Ljava/lang/String;
    .end local v8    # "stoken":Ljava/lang/String;
    .end local v9    # "token":Ljava/lang/String;
    .end local v10    # "tokenExpire":Ljava/lang/String;
    :goto_0
    return-void

    .line 354
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v6    # "result_code":Ljava/lang/String;
    .restart local v7    # "status":Ljava/lang/String;
    :cond_0
    const-string/jumbo v11, "040004"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 356
    const-string/jumbo v11, "BookTokenHelper"

    const-string/jumbo v12, "WX RS Token out ,logout"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Lth;->a()Lth;

    move-result-object v11

    invoke-virtual {v11}, Lth;->f()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "response":Ljava/lang/String;
    .end local v6    # "result_code":Ljava/lang/String;
    .end local v7    # "status":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v11, p0, Lanv$3;->a:Lanv;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lanv;->a(Lanv;Z)Z

    goto :goto_0

    .line 360
    .restart local v4    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v11, "BookTokenHelper"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
