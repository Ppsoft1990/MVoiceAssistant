.class Lts$2;
.super Ljava/lang/Object;
.source "WXLoginUtil.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lts;


# direct methods
.method constructor <init>(Lts;)V
    .locals 0
    .param p1, "this$0"    # Lts;

    .prologue
    .line 195
    iput-object p1, p0, Lts$2;->a:Lts;

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
    .line 199
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 200
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual/range {p2 .. p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "response":Ljava/lang/String;
    const-string/jumbo v11, "WXLoginUtil"

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

    .line 202
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 204
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 206
    const-string/jumbo v11, "error_code"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "result_code":Ljava/lang/String;
    const-string/jumbo v11, "status"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "status":Ljava/lang/String;
    const-string/jumbo v11, "000000"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, "success"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 209
    const-string/jumbo v11, "result"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 210
    .local v5, "resultJson":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 211
    const-string/jumbo v11, "tokenexpire"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, "tokenExpire":Ljava/lang/String;
    const-string/jumbo v11, "logintype"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 213
    .local v3, "loginType":I
    const-string/jumbo v11, "stoken"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "stoken":Ljava/lang/String;
    const-string/jumbo v11, "token"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "token":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 216
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 217
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    invoke-direct {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;-><init>()V

    .line 218
    .local v0, "authenticationInfo":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    invoke-virtual {v0, v9}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setTokenId(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, v3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setLoginType(I)V

    .line 220
    invoke-virtual {v0, v10}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->setInValidTime(Ljava/lang/String;)V

    .line 222
    invoke-static {v0}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 224
    invoke-static {}, Laoi;->a()Laoi;

    move-result-object v11

    const/16 v12, 0x69

    invoke-virtual {v11, v12, v0}, Laoi;->a(ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V

    .line 235
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v11

    iget-object v12, p0, Lts$2;->a:Lts;

    invoke-static {v12}, Lts;->b(Lts;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lanv;->i(Ljava/lang/String;)V

    .line 236
    iget-object v11, p0, Lts$2;->a:Lts;

    new-instance v12, Ltr;

    invoke-direct {v12}, Ltr;-><init>()V

    invoke-static {v11, v12}, Lts;->a(Lts;Ltr;)Ltr;

    .line 237
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 238
    iget-object v11, p0, Lts$2;->a:Lts;

    invoke-static {v11}, Lts;->e(Lts;)Ltr;

    move-result-object v11

    invoke-virtual {v11, v8}, Ltr;->a(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v11

    invoke-virtual {v11, v8}, Lanv;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
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
    :cond_0
    :goto_0
    return-void

    .line 247
    .restart local v4    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v11, "WXLoginUtil"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "response":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v11

    new-instance v12, Laol;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Laol;-><init>(Z)V

    invoke-virtual {v11, v12}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 253
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v12, Lts$2$1;

    invoke-direct {v12, p0}, Lts$2$1;-><init>(Lts$2;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
