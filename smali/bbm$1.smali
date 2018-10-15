.class Lbbm$1;
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
    .line 136
    iput-object p1, p0, Lbbm$1;->a:Lbbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 139
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 141
    :try_start_0
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "realResult":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 143
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "errorCode"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "errCode":Ljava/lang/String;
    const-string/jumbo v6, "000000"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    const-string/jumbo v6, "result"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 147
    .local v4, "resultJson":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 148
    const-string/jumbo v6, "version"

    const-string/jumbo v7, "V5"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-static {v4}, Lbbo;->a(Lorg/json/JSONObject;)Lbbo;

    move-result-object v5

    .line 150
    .local v5, "voiceRoleModel":Lbbo;
    iget-object v6, p0, Lbbm$1;->a:Lbbm;

    invoke-static {v6, v5}, Lbbm;->a(Lbbm;Lbbo;)Lbbo;

    move-result-object v5

    .line 151
    if-eqz v5, :cond_2

    .line 152
    iget-object v6, p0, Lbbm$1;->a:Lbbm;

    invoke-virtual {v6, v5}, Lbbm;->a(Lbbo;)V

    .line 153
    iget-object v6, p0, Lbbm$1;->a:Lbbm;

    invoke-static {v6}, Lbbm;->a(Lbbm;)Lbbb;

    move-result-object v6

    if-nez v6, :cond_1

    .line 170
    .end local v1    # "errCode":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "realResult":Ljava/lang/String;
    .end local v4    # "resultJson":Lorg/json/JSONObject;
    .end local v5    # "voiceRoleModel":Lbbo;
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local v1    # "errCode":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "realResult":Ljava/lang/String;
    .restart local v4    # "resultJson":Lorg/json/JSONObject;
    .restart local v5    # "voiceRoleModel":Lbbo;
    :cond_1
    iget-object v6, p0, Lbbm$1;->a:Lbbm;

    invoke-static {v6}, Lbbm;->a(Lbbm;)Lbbb;

    move-result-object v6

    invoke-interface {v6, v5}, Lbbb;->a(Lbbo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v1    # "errCode":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "realResult":Ljava/lang/String;
    .end local v4    # "resultJson":Lorg/json/JSONObject;
    .end local v5    # "voiceRoleModel":Lbbo;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "VoiceRoleDataManager"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v6, p0, Lbbm$1;->a:Lbbm;

    invoke-static {v6}, Lbbm;->a(Lbbm;)Lbbb;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 169
    iget-object v6, p0, Lbbm$1;->a:Lbbm;

    invoke-static {v6}, Lbbm;->a(Lbbm;)Lbbb;

    move-result-object v6

    invoke-interface {v6}, Lbbb;->a()V

    goto :goto_0
.end method
