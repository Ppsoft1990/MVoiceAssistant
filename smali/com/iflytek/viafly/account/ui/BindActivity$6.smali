.class Lcom/iflytek/viafly/account/ui/BindActivity$6;
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
    .line 458
    iput-object p1, p0, Lcom/iflytek/viafly/account/ui/BindActivity$6;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 11
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 462
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 463
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "response":Ljava/lang/String;
    const-string/jumbo v8, "BindActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "response is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 467
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 468
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 469
    const-string/jumbo v8, "error_code"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "result_code":Ljava/lang/String;
    const-string/jumbo v8, "status"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, "status":Ljava/lang/String;
    const-string/jumbo v8, "000000"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "success"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 472
    const-string/jumbo v8, "result"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 473
    .local v3, "resultJson":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 474
    const-string/jumbo v8, "token"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, "token":Ljava/lang/String;
    const-string/jumbo v8, "tokenexpire"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 476
    .local v7, "tokenExpire":Ljava/lang/String;
    invoke-static {v6, v7}, Lmz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lth;->a()Lth;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Lth;->a(Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v8

    new-instance v9, Lcom/iflytek/viafly/account/model/BindSuccessEvent;

    iget-object v10, p0, Lcom/iflytek/viafly/account/ui/BindActivity$6;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v10}, Lcom/iflytek/viafly/account/ui/BindActivity;->o(Lcom/iflytek/viafly/account/ui/BindActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/iflytek/viafly/account/model/BindSuccessEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 480
    iget-object v8, p0, Lcom/iflytek/viafly/account/ui/BindActivity$6;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v8}, Lcom/iflytek/viafly/account/ui/BindActivity;->f(Lcom/iflytek/viafly/account/ui/BindActivity;)Lcom/iflytek/viafly/account/ui/BindActivity$a;

    move-result-object v8

    const/16 v9, 0x3ef

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendEmptyMessage(I)Z

    .line 499
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    .end local v4    # "result_code":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "tokenExpire":Ljava/lang/String;
    :goto_0
    return-void

    .line 483
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "response":Ljava/lang/String;
    .restart local v4    # "result_code":Ljava/lang/String;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_0
    const-string/jumbo v8, "039002"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 484
    iget-object v8, p0, Lcom/iflytek/viafly/account/ui/BindActivity$6;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    const-string/jumbo v9, "\u5df2\u7ed1\u5b9a\u624b\u673a\u53f7"

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .end local v4    # "result_code":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/iflytek/viafly/account/ui/BindActivity$6;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-static {v8}, Lcom/iflytek/viafly/account/ui/BindActivity;->f(Lcom/iflytek/viafly/account/ui/BindActivity;)Lcom/iflytek/viafly/account/ui/BindActivity$a;

    move-result-object v8

    const/16 v9, 0x3ee

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/ui/BindActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 485
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "response":Ljava/lang/String;
    .restart local v4    # "result_code":Ljava/lang/String;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "039001"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 486
    iget-object v8, p0, Lcom/iflytek/viafly/account/ui/BindActivity$6;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    const-string/jumbo v9, "\u624b\u673a\u53f7\u5df2\u88ab\u7ed1\u5b9a"

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 493
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v4    # "result_code":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "BindActivity"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 487
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v4    # "result_code":Ljava/lang/String;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v8, "018007"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 488
    iget-object v8, p0, Lcom/iflytek/viafly/account/ui/BindActivity$6;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    const-string/jumbo v9, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 490
    :cond_4
    iget-object v8, p0, Lcom/iflytek/viafly/account/ui/BindActivity$6;->a:Lcom/iflytek/viafly/account/ui/BindActivity;

    const-string/jumbo v9, "\u7ed1\u5b9a\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
