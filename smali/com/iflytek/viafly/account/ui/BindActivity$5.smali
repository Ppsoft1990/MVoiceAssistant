.class Lcom/iflytek/viafly/account/ui/BindActivity$5;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/account/ui/BindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/account/ui/BindActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$5;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

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
    .line 434
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 435
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "response":Ljava/lang/String;
    const-string/jumbo v5, "BindActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "response is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 439
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 441
    const-string/jumbo v5, "error_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "result_code":Ljava/lang/String;
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "success"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    iget-object v5, p0, Lcom/iflytek/viafly/account/ui/BindActivity$5;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/account/ui/BindActivity;->f(Lcom/iflytek/viafly/account/ui/BindActivity;)Lcom/iflytek/viafly/account/ui/BindActivity$a;

    move-result-object v5

    const/16 v6, 0x3ec

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 448
    .restart local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "BindActivity"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "response":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/iflytek/viafly/account/ui/BindActivity$5;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    const-string/jumbo v6, "\u4e0b\u53d1\u9a8c\u8bc1\u7801\u5931\u8d25"

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
