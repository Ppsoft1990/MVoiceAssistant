.class Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;
.super Ljava/lang/Object;
.source "NewsPresenter.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/news/NewsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

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

    .line 78
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 79
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "response":Ljava/lang/String;
    const-string/jumbo v5, "NewsPresenter"

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

    .line 83
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 86
    const-string/jumbo v5, "error_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "result_code":Ljava/lang/String;
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "success"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)Lajk;

    move-result-object v5

    invoke-interface {v5, v2}, Lajk;->a(Ljava/lang/String;)V

    .line 91
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    const/16 v6, 0x3e9

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-virtual {v7}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(Lcom/iflytek/viafly/homepage/news/NewsPresenter;ILjava/lang/String;)V

    .line 108
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 93
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "response":Ljava/lang/String;
    .restart local v3    # "result_code":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "000008"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)Lajk;

    move-result-object v5

    const-string/jumbo v6, "card_hide"

    invoke-interface {v5, v6}, Lajk;->a(Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    const/16 v6, 0x3ea

    iget-object v7, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-virtual {v7}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b(Lcom/iflytek/viafly/homepage/news/NewsPresenter;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "NewsPresenter"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "response":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-static {v5}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->a(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)Lajk;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {v5, v6}, Lajk;->a(Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$1;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-virtual {v6}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v8, v6}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->c(Lcom/iflytek/viafly/homepage/news/NewsPresenter;ILjava/lang/String;)V

    goto :goto_0
.end method
