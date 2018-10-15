.class Laoi$1;
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
    .line 100
    iput-object p1, p0, Laoi$1;->a:Laoi;

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
    const/4 v9, 0x0

    .line 104
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 105
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "response":Ljava/lang/String;
    const-string/jumbo v6, "MiguUiLoginHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "login: response is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 109
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "error_code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "error_code":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "000000"

    .line 112
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    const-string/jumbo v6, "result"

    .line 114
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 115
    .local v5, "resultJson":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 116
    iget-object v6, p0, Laoi$1;->a:Laoi;

    invoke-static {v6, v5}, Laoi;->a(Laoi;Lorg/json/JSONObject;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 118
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-nez v0, :cond_0

    .line 120
    iget-object v6, p0, Laoi$1;->a:Laoi;

    invoke-static {v6}, Laoi;->a(Laoi;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v6

    iget-object v7, p0, Laoi$1;->a:Laoi;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Laoi;->a(Laoi;Z)Lorg/json/JSONObject;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->notifyLoginResult(Lorg/json/JSONObject;)V

    .line 121
    const-string/jumbo v6, "MiguUiLoginHelper"

    const-string/jumbo v7, "login fail"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v2    # "error_code":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 125
    .restart local v0    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .restart local v2    # "error_code":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v5    # "resultJson":Lorg/json/JSONObject;
    :cond_0
    iget-object v6, p0, Laoi$1;->a:Laoi;

    const/16 v7, 0x67

    invoke-virtual {v6, v7, v0}, Laoi;->a(ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 126
    const-string/jumbo v6, "MiguUiLoginHelper"

    const-string/jumbo v7, "login success"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v0    # "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v2    # "error_code":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "MiguUiLoginHelper"

    const-string/jumbo v7, "Json analyse error"

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "response":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v6, p0, Laoi$1;->a:Laoi;

    invoke-static {v6}, Laoi;->a(Laoi;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v6

    iget-object v7, p0, Laoi$1;->a:Laoi;

    invoke-static {v7, v9}, Laoi;->a(Laoi;Z)Lorg/json/JSONObject;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->notifyLoginResult(Lorg/json/JSONObject;)V

    .line 152
    const-string/jumbo v6, "MiguUiLoginHelper"

    const-string/jumbo v7, "login success"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    .restart local v2    # "error_code":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "response":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "019002"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    const-string/jumbo v6, "MiguUiLoginHelper"

    const-string/jumbo v7, "migu sdk get ks errorCode,clean sso"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v6, p0, Laoi$1;->a:Laoi;

    invoke-static {v6}, Laoi;->a(Laoi;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v6

    new-instance v7, Laoi$1$1;

    invoke-direct {v7, p0}, Laoi$1$1;-><init>(Laoi$1;)V

    invoke-interface {v6, v7}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->cleanSSO(Lcom/cmcc/migusso/sdk/auth/TokenListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
