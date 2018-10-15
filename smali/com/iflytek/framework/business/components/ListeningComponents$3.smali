.class Lcom/iflytek/framework/business/components/ListeningComponents$3;
.super Ljava/lang/Object;
.source "ListeningComponents.java"

# interfaces
.implements Lazd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/ListeningComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/ListeningComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/ListeningComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/ListeningComponents;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/iflytek/framework/business/components/ListeningComponents$3;->this$0:Lcom/iflytek/framework/business/components/ListeningComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 528
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents$3;->this$0:Lcom/iflytek/framework/business/components/ListeningComponents;

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lcom/iflytek/framework/business/components/ListeningComponents;->access$000(Lcom/iflytek/framework/business/components/ListeningComponents;ILjava/lang/String;)V

    .line 529
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 494
    const v2, 0x30d49

    .line 495
    .local v2, "errorCode":I
    const/4 v3, 0x0

    .line 496
    .local v3, "remmoteId":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 498
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 499
    .local v4, "result":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 500
    const-string/jumbo v7, "errorcode"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v7, "status"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v7, "000000"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "success"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 503
    const-string/jumbo v7, "Business_ListeningComponents"

    const-string/jumbo v8, "upload success"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string/jumbo v7, "result"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 505
    .local v5, "resultObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 506
    const-string/jumbo v7, "remmoteid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 508
    const-string/jumbo v7, "Business_ListeningComponents"

    const-string/jumbo v8, "upload parser success"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    const/4 v2, 0x0

    .line 523
    .end local v0    # "code":Ljava/lang/String;
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v5    # "resultObj":Lorg/json/JSONObject;
    .end local v6    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/iflytek/framework/business/components/ListeningComponents$3;->this$0:Lcom/iflytek/framework/business/components/ListeningComponents;

    invoke-static {v7, v2, v3}, Lcom/iflytek/framework/business/components/ListeningComponents;->access$000(Lcom/iflytek/framework/business/components/ListeningComponents;ILjava/lang/String;)V

    .line 524
    return-void

    .line 512
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v4    # "result":Lorg/json/JSONObject;
    .restart local v5    # "resultObj":Lorg/json/JSONObject;
    .restart local v6    # "status":Ljava/lang/String;
    :cond_1
    const v2, 0x30d45

    goto :goto_0

    .line 517
    .end local v0    # "code":Ljava/lang/String;
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v5    # "resultObj":Lorg/json/JSONObject;
    .end local v6    # "status":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Business_ListeningComponents"

    const-string/jumbo v8, "error "

    invoke-static {v7, v8, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 521
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const v2, 0x30d44

    goto :goto_0
.end method
