.class Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;
.super Ljava/lang/Object;
.source "FoodCardPresenter.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

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
    const/16 v8, 0x3ea

    .line 109
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 110
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "response":Ljava/lang/String;
    const-string/jumbo v5, "FoodCardPresenter"

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

    .line 113
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 116
    const-string/jumbo v5, "error_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "result_code":Ljava/lang/String;
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "success"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;)Lajk;

    move-result-object v5

    invoke-interface {v5, v2}, Lajk;->a(Ljava/lang/String;)V

    .line 121
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    const/16 v6, 0x3e9

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {v7}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;ILjava/lang/String;)V

    .line 138
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 123
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "response":Ljava/lang/String;
    .restart local v3    # "result_code":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "000008"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;)Lajk;

    move-result-object v5

    const-string/jumbo v6, "card_hide"

    invoke-interface {v5, v6}, Lajk;->a(Ljava/lang/String;)V

    .line 126
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    const/16 v6, 0x3ea

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {v7}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->b(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "FoodCardPresenter"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "response":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->a(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;)Lajk;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {v5, v6}, Lajk;->a(Ljava/lang/String;)V

    .line 136
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$1;->a:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;

    invoke-virtual {v6}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v8, v6}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;->c(Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;ILjava/lang/String;)V

    goto :goto_0
.end method
