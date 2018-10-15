.class Lbbm$2;
.super Ljava/lang/Object;
.source "VoiceRoleDataManager.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbm;


# direct methods
.method constructor <init>(Lbbm;)V
    .locals 0
    .param p1, "this$0"    # Lbbm;

    .prologue
    .line 173
    iput-object p1, p0, Lbbm$2;->a:Lbbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 9
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 176
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 178
    :try_start_0
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "realResult":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 180
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "errorCode"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "errCode":Ljava/lang/String;
    const-string/jumbo v7, "000000"

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 183
    const-string/jumbo v7, "result"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 184
    .local v6, "resultJson":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 185
    const-string/jumbo v7, "thumbupcount"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "resultCount":Ljava/lang/String;
    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "id":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 188
    iget-object v7, p0, Lbbm$2;->a:Lbbm;

    invoke-static {v7}, Lbbm;->a(Lbbm;)Lbbb;

    move-result-object v7

    if-nez v7, :cond_1

    .line 205
    .end local v1    # "errCode":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "realResult":Ljava/lang/String;
    .end local v5    # "resultCount":Ljava/lang/String;
    .end local v6    # "resultJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 191
    .restart local v1    # "errCode":Ljava/lang/String;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "realResult":Ljava/lang/String;
    .restart local v5    # "resultCount":Ljava/lang/String;
    .restart local v6    # "resultJson":Lorg/json/JSONObject;
    :cond_1
    iget-object v7, p0, Lbbm$2;->a:Lbbm;

    invoke-static {v7}, Lbbm;->a(Lbbm;)Lbbb;

    move-result-object v7

    invoke-interface {v7, v2, v5}, Lbbb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v1    # "errCode":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "realResult":Ljava/lang/String;
    .end local v5    # "resultCount":Ljava/lang/String;
    .end local v6    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "VoiceRoleDataManager"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v7, p0, Lbbm$2;->a:Lbbm;

    invoke-static {v7}, Lbbm;->a(Lbbm;)Lbbb;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 204
    iget-object v7, p0, Lbbm$2;->a:Lbbm;

    invoke-static {v7}, Lbbm;->a(Lbbm;)Lbbb;

    move-result-object v7

    invoke-interface {v7}, Lbbb;->b()V

    goto :goto_0
.end method
