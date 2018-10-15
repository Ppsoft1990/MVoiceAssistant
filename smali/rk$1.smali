.class Lrk$1;
.super Ljava/lang/Object;
.source "SpeechEnhanceRequestHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrk;-><init>(Landroid/content/Context;Lqv$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqv$a;


# direct methods
.method constructor <init>(Lqv$a;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lrk$1;->a:Lqv$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 32
    const-string/jumbo v3, "SpeechEnhanceRequestHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "errorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requestType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    if-nez p2, :cond_1

    .line 35
    const-string/jumbo v3, "SpeechEnhanceRequestHelper"

    const-string/jumbo v4, "request fail : result is empty"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v3, p0, Lrk$1;->a:Lqv$a;

    if-eqz v3, :cond_0

    .line 37
    iget-object v3, p0, Lrk$1;->a:Lqv$a;

    invoke-interface {v3}, Lqv$a;->a()V

    .line 58
    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    :goto_0
    return-void

    .line 42
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_1
    :try_start_0
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "res":Ljava/lang/String;
    const-string/jumbo v3, "SpeechEnhanceRequestHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request result is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "jsonRes":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    const-string/jumbo v3, "success"

    const-string/jumbo v4, "status"

    const-string/jumbo v5, "fail"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 47
    :cond_2
    const-string/jumbo v3, "SpeechEnhanceRequestHelper"

    const-string/jumbo v4, "request fail : status is not success"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v3, p0, Lrk$1;->a:Lqv$a;

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lrk$1;->a:Lqv$a;

    invoke-interface {v3}, Lqv$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v1    # "jsonRes":Lorg/json/JSONObject;
    .end local v2    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SpeechEnhanceRequestHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonRes":Lorg/json/JSONObject;
    .restart local v2    # "res":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lrk$1;->a:Lqv$a;

    invoke-static {v1, v3}, Lrk;->a(Lorg/json/JSONObject;Lqv$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
