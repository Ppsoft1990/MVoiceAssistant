.class Layn$1;
.super Ljava/lang/Object;
.source "TranslateReportErrorHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layn;->a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lajm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lajm;

.field final synthetic b:Layn;


# direct methods
.method constructor <init>(Layn;Lajm;)V
    .locals 0
    .param p1, "this$0"    # Layn;

    .prologue
    .line 28
    iput-object p1, p0, Layn$1;->b:Layn;

    iput-object p2, p0, Layn$1;->a:Lajm;

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
    .line 31
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    move-object v5, p2

    .line 32
    check-cast v5, Lwa;

    invoke-virtual {v5}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "response":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 34
    const-string/jumbo v5, "TranslateReportErrorHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResult:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "returnCode":Ljava/lang/String;
    iget-object v5, p0, Layn$1;->a:Lajm;

    if-eqz v5, :cond_0

    .line 40
    iget-object v5, p0, Layn$1;->a:Lajm;

    invoke-interface {v5, v4}, Lajm;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "returnCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 42
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const-string/jumbo v5, "TranslateReportErrorHelper"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 42
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method
