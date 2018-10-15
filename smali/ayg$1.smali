.class Layg$1;
.super Ljava/lang/Object;
.source "TranslateEntryRequestHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layg;->a(Lajm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lajm;

.field final synthetic b:Layg;


# direct methods
.method constructor <init>(Layg;Lajm;)V
    .locals 0
    .param p1, "this$0"    # Layg;

    .prologue
    .line 29
    iput-object p1, p0, Layg$1;->b:Layg;

    iput-object p2, p0, Layg$1;->a:Lajm;

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
    .line 32
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 33
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "response":Ljava/lang/String;
    const-string/jumbo v5, "EntryRequestHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v5, p0, Layg$1;->a:Lajm;

    if-eqz v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "status"

    const-string/jumbo v6, "fail"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v5, "errorCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "errCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "000000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    iget-object v5, p0, Layg$1;->a:Lajm;

    invoke-interface {v5, v3}, Lajm;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "errCode":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 46
    .restart local v3    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "TranslateEntryRequestHelper"

    const-string/jumbo v6, "Date progress Exception"

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "response":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Layg$1;->a:Lajm;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lajm;->onError(I)V

    goto :goto_0
.end method
