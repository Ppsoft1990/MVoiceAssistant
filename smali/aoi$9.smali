.class Laoi$9;
.super Ljava/lang/Object;
.source "MiguUiLoginHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laoi;


# direct methods
.method constructor <init>(Laoi;)V
    .locals 0
    .param p1, "this$0"    # Laoi;

    .prologue
    .line 484
    iput-object p1, p0, Laoi$9;->a:Laoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 488
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 489
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "response":Ljava/lang/String;
    const-string/jumbo v7, "MiguUiLoginHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bind: response is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 493
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 494
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "error_code"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "error_code":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "000000"

    .line 496
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 497
    const-string/jumbo v7, "result"

    .line 498
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 499
    .local v5, "resultJson":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 500
    iget-object v7, p0, Laoi$9;->a:Laoi;

    invoke-static {v7, v5}, Laoi;->a(Laoi;Lorg/json/JSONObject;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 502
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v0, :cond_0

    .line 503
    const-string/jumbo v7, "MiguUiLoginHelper"

    const-string/jumbo v8, "bind success result"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {v0}, Lmz;->c(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 506
    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, "token":Ljava/lang/String;
    invoke-static {}, Lth;->a()Lth;

    move-result-object v7

    new-instance v8, Laoi$9$1;

    invoke-direct {v8, p0}, Laoi$9$1;-><init>(Laoi$9;)V

    invoke-virtual {v7, v8, v6}, Lth;->a(Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmcc.IFLY_NEED_REFRESH_USERINFO"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lil;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v0    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v2    # "error_code":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    .end local v6    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 528
    .restart local v4    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 529
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "MiguUiLoginHelper"

    const-string/jumbo v8, "Json analyse error"

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
