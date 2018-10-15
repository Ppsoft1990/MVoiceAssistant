.class Lanb$1;
.super Ljava/lang/Object;
.source "BookShareModel.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanb;


# direct methods
.method constructor <init>(Lanb;)V
    .locals 0
    .param p1, "this$0"    # Lanb;

    .prologue
    .line 70
    iput-object p1, p0, Lanb$1;->a:Lanb;

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
    .line 73
    const-string/jumbo v5, "BookShareModel"

    const-string/jumbo v6, "onResult result "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v5, p0, Lanb$1;->a:Lanb;

    invoke-static {v5}, Lanb;->a(Lanb;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 75
    if-eqz p2, :cond_5

    if-nez p1, :cond_5

    .line 77
    :try_start_0
    const-string/jumbo v5, "BookShareModel"

    const-string/jumbo v7, "handleResult "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "response":Ljava/lang/String;
    const-string/jumbo v5, "BookShareModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResult response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 81
    const-string/jumbo v5, "BookShareModel"

    const-string/jumbo v7, "handleResult response is not null"

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, "resultJson":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 85
    iget-object v5, p0, Lanb$1;->a:Lanb;

    iget-object v7, p0, Lanb$1;->a:Lanb;

    invoke-static {v7, p5}, Lanb;->a(Lanb;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lanb;->a(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 89
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "resultJson":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    const-string/jumbo v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "result_code":Ljava/lang/String;
    const-string/jumbo v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v5, "fail"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "000001"

    .line 94
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "999999"

    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    :cond_1
    iget-object v5, p0, Lanb$1;->a:Lanb;

    iget-object v7, p0, Lanb$1;->a:Lanb;

    invoke-static {v7, p5}, Lanb;->a(Lanb;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lanb;->a(I)V

    .line 98
    const-string/jumbo v5, "BookShareModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleResult error, return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :try_start_4
    monitor-exit v6

    goto :goto_0

    .line 127
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 102
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "resultJson":Lorg/json/JSONObject;
    .restart local v3    # "result_code":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "success"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 105
    const/16 v5, 0x72

    if-ne p5, v5, :cond_3

    .line 106
    const-string/jumbo v5, "BookShareModel"

    const-string/jumbo v7, "handleResult GET_SHARE_LINK "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v5, p0, Lanb$1;->a:Lanb;

    invoke-static {v5, v2}, Lanb;->a(Lanb;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 109
    :cond_3
    const/16 v5, 0x73

    if-ne p5, v5, :cond_4

    .line 110
    :try_start_7
    const-string/jumbo v5, "BookShareModel"

    const-string/jumbo v7, "handleResult REPORT_SHARE_RESULT "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v5, p0, Lanb$1;->a:Lanb;

    invoke-static {v5}, Lanb;->b(Lanb;)Lamq;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 112
    iget-object v5, p0, Lanb$1;->a:Lanb;

    invoke-static {v5}, Lanb;->b(Lanb;)Lamq;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lamq;->onShareReportResult(I)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 113
    :try_start_8
    monitor-exit v6

    goto/16 :goto_0

    .line 119
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "BookShareModel"

    const-string/jumbo v7, "onResult Exception"

    invoke-static {v5, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    iget-object v5, p0, Lanb$1;->a:Lanb;

    iget-object v7, p0, Lanb$1;->a:Lanb;

    invoke-static {v7, p5}, Lanb;->a(Lanb;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lanb;->a(I)V

    .line 127
    .end local v1    # "response":Ljava/lang/String;
    :goto_1
    monitor-exit v6

    goto/16 :goto_0

    .line 125
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_5
    iget-object v5, p0, Lanb$1;->a:Lanb;

    iget-object v7, p0, Lanb$1;->a:Lanb;

    invoke-static {v7, p5}, Lanb;->a(Lanb;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lanb;->a(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method
