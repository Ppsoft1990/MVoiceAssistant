.class Lals$1;
.super Ljava/lang/Object;
.source "HomeSignInDataHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lals;


# direct methods
.method constructor <init>(Lals;)V
    .locals 0
    .param p1, "this$0"    # Lals;

    .prologue
    .line 57
    iput-object p1, p0, Lals$1;->a:Lals;

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
    .line 60
    const-string/jumbo v5, "HomeSignInDataHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResult  resullt is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v5, p0, Lals$1;->a:Lals;

    invoke-static {v5}, Lals;->a(Lals;)Lalt;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 63
    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 64
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "response":Ljava/lang/String;
    const-string/jumbo v5, "HomeSignInDataHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResult response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 68
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "returncode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "status":Ljava/lang/String;
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    iget-object v5, p0, Lals$1;->a:Lals;

    invoke-static {v5}, Lals;->a(Lals;)Lalt;

    move-result-object v5

    invoke-interface {v5, v2}, Lalt;->onResult(Ljava/lang/String;)V

    .line 87
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "response":Ljava/lang/String;
    .restart local v3    # "status":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "tip"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "tip":Ljava/lang/String;
    iget-object v5, p0, Lals$1;->a:Lals;

    invoke-static {v5}, Lals;->a(Lals;)Lalt;

    move-result-object v5

    iget-object v6, p0, Lals$1;->a:Lals;

    invoke-static {v6}, Lals;->b(Lals;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6, v4}, Lalt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "tip":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "HomeSignInDataHelper"

    const-string/jumbo v6, "onResult Exception"

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    iget-object v5, p0, Lals$1;->a:Lals;

    invoke-static {v5}, Lals;->a(Lals;)Lalt;

    move-result-object v5

    invoke-interface {v5, p1}, Lalt;->onError(I)V

    goto :goto_0

    .line 81
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v5, p0, Lals$1;->a:Lals;

    invoke-static {v5}, Lals;->a(Lals;)Lalt;

    move-result-object v5

    invoke-interface {v5, p1}, Lalt;->onError(I)V

    goto :goto_0

    .line 84
    .end local v2    # "response":Ljava/lang/String;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_3
    iget-object v5, p0, Lals$1;->a:Lals;

    invoke-static {v5}, Lals;->a(Lals;)Lalt;

    move-result-object v5

    invoke-interface {v5, p1}, Lalt;->onError(I)V

    goto :goto_0
.end method
