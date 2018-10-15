.class Lcom/iflytek/framework/business/components/CommonComponents$6;
.super Ljava/lang/Object;
.source "CommonComponents.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/CommonComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/CommonComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/CommonComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/CommonComponents;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/iflytek/framework/business/components/CommonComponents$6;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

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
    .line 779
    const-string/jumbo v4, ""

    .line 780
    .local v4, "result_code":Ljava/lang/String;
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 781
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, "response":Ljava/lang/String;
    const-string/jumbo v8, "Business_CommonComponents"

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

    .line 783
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 785
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 786
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 787
    const-string/jumbo v8, "error_code"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 788
    const-string/jumbo v8, "status"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 789
    .local v5, "status":Ljava/lang/String;
    const-string/jumbo v8, "000000"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "success"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 790
    const-string/jumbo v8, "result"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 791
    .local v3, "resultJson":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 792
    const-string/jumbo v8, "token"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 793
    .local v6, "token":Ljava/lang/String;
    const-string/jumbo v8, "tokenexpire"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 794
    .local v7, "tokenExpire":Ljava/lang/String;
    invoke-static {v6, v7}, Lmz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {}, Lth;->a()Lth;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Lth;->a(Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;Ljava/lang/String;)V

    .line 798
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "tokenExpire":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/iflytek/framework/business/components/CommonComponents$6;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    const-string/jumbo v9, "0"

    invoke-static {v8, v9}, Lcom/iflytek/framework/business/components/CommonComponents;->access$500(Lcom/iflytek/framework/business/components/CommonComponents;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    .end local v5    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 802
    .restart local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "Business_CommonComponents"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "response":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/iflytek/framework/business/components/CommonComponents$6;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    invoke-static {v8, v4}, Lcom/iflytek/framework/business/components/CommonComponents;->access$500(Lcom/iflytek/framework/business/components/CommonComponents;Ljava/lang/String;)V

    goto :goto_0
.end method
