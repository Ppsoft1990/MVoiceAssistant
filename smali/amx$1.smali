.class Lamx$1;
.super Ljava/lang/Object;
.source "BookCollectModel.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamx;


# direct methods
.method constructor <init>(Lamx;)V
    .locals 0
    .param p1, "this$0"    # Lamx;

    .prologue
    .line 71
    iput-object p1, p0, Lamx$1;->a:Lamx;

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
    .line 74
    const-string/jumbo v5, "BookCollectModel"

    const-string/jumbo v6, "onResult result "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v5, p0, Lamx$1;->a:Lamx;

    invoke-static {v5}, Lamx;->a(Lamx;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 76
    if-eqz p2, :cond_8

    if-nez p1, :cond_8

    .line 78
    :try_start_0
    const-string/jumbo v5, "BookCollectModel"

    const-string/jumbo v7, "handleResult "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "response":Ljava/lang/String;
    const-string/jumbo v5, "BookCollectModel"

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

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 82
    const-string/jumbo v5, "BookCollectModel"

    const-string/jumbo v7, "handleResult response is not null"

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "resultJson":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 86
    iget-object v5, p0, Lamx$1;->a:Lamx;

    iget-object v7, p0, Lamx$1;->a:Lamx;

    invoke-static {v7, p5}, Lamx;->a(Lamx;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lamx;->a(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 90
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "resultJson":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    const-string/jumbo v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "result_code":Ljava/lang/String;
    const-string/jumbo v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v5, "fail"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "000001"

    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "999999"

    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    :cond_1
    iget-object v5, p0, Lamx$1;->a:Lamx;

    iget-object v7, p0, Lamx$1;->a:Lamx;

    invoke-static {v7, p5}, Lamx;->a(Lamx;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lamx;->a(I)V

    .line 99
    const-string/jumbo v5, "BookCollectModel"

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

    .line 100
    :try_start_4
    monitor-exit v6

    goto :goto_0

    .line 146
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

    .line 115
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "resultJson":Lorg/json/JSONObject;
    .restart local v3    # "result_code":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x7f

    if-ne p5, v5, :cond_3

    .line 116
    :try_start_5
    const-string/jumbo v5, "BookCollectModel"

    const-string/jumbo v7, "handleResult GET_ALL_COLLECT "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v5, p0, Lamx$1;->a:Lamx;

    invoke-static {v5, v3, v4, v2}, Lamx;->a(Lamx;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 119
    :cond_3
    const/16 v5, 0x7d

    if-ne p5, v5, :cond_5

    .line 120
    :try_start_7
    const-string/jumbo v5, "BookCollectModel"

    const-string/jumbo v7, "handleResult ADD_COLLECT "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v5, p0, Lamx$1;->a:Lamx;

    invoke-static {v5}, Lamx;->b(Lamx;)Lamq;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 122
    iget-object v5, p0, Lamx$1;->a:Lamx;

    invoke-static {v5}, Lamx;->b(Lamx;)Lamq;

    move-result-object v5

    invoke-virtual {v5, p5, v3}, Lamq;->onResultCode(ILjava/lang/String;)V

    .line 124
    :cond_4
    iget-object v5, p0, Lamx$1;->a:Lamx;

    const/4 v7, 0x0

    invoke-static {v5, v3, v4, v2, v7}, Lamx;->a(Lamx;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 125
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 126
    :cond_5
    const/16 v5, 0x7e

    if-ne p5, v5, :cond_7

    .line 127
    :try_start_9
    const-string/jumbo v5, "BookCollectModel"

    const-string/jumbo v7, "handleResult REMOVE_COLLECT "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v5, p0, Lamx$1;->a:Lamx;

    invoke-static {v5}, Lamx;->b(Lamx;)Lamq;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 129
    iget-object v5, p0, Lamx$1;->a:Lamx;

    invoke-static {v5}, Lamx;->b(Lamx;)Lamq;

    move-result-object v5

    invoke-virtual {v5, p5, v3}, Lamq;->onResultCode(ILjava/lang/String;)V

    .line 131
    :cond_6
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "success"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 132
    iget-object v5, p0, Lamx$1;->a:Lamx;

    invoke-static {v5}, Lamx;->b(Lamx;)Lamq;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 133
    iget-object v5, p0, Lamx$1;->a:Lamx;

    invoke-static {v5}, Lamx;->b(Lamx;)Lamq;

    move-result-object v5

    invoke-virtual {v5}, Lamq;->onSubCollectResult()V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 134
    :try_start_a
    monitor-exit v6

    goto/16 :goto_0

    .line 138
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "BookCollectModel"

    const-string/jumbo v7, "onResult Exception"

    invoke-static {v5, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_7
    iget-object v5, p0, Lamx$1;->a:Lamx;

    iget-object v7, p0, Lamx$1;->a:Lamx;

    invoke-static {v7, p5}, Lamx;->a(Lamx;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lamx;->a(I)V

    .line 146
    .end local v1    # "response":Ljava/lang/String;
    :goto_1
    monitor-exit v6

    goto/16 :goto_0

    .line 144
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_8
    iget-object v5, p0, Lamx$1;->a:Lamx;

    iget-object v7, p0, Lamx$1;->a:Lamx;

    invoke-static {v7, p5}, Lamx;->a(Lamx;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lamx;->a(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1
.end method
