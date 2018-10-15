.class Lams$1;
.super Ljava/lang/Object;
.source "BookBizModel.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lams;


# direct methods
.method constructor <init>(Lams;)V
    .locals 0
    .param p1, "this$0"    # Lams;

    .prologue
    .line 126
    iput-object p1, p0, Lams$1;->a:Lams;

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
    .line 129
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v6, "onResult result "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v5, p0, Lams$1;->a:Lams;

    invoke-static {v5}, Lams;->a(Lams;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 131
    if-eqz p2, :cond_a

    if-nez p1, :cond_a

    .line 133
    :try_start_0
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v7, "handleResult "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "response":Ljava/lang/String;
    const-string/jumbo v5, "BookBizModel"

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

    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 137
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v7, "handleResult response is not null"

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "resultJson":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 141
    iget-object v5, p0, Lams$1;->a:Lams;

    iget-object v7, p0, Lams$1;->a:Lams;

    invoke-static {v7, p5}, Lams;->a(Lams;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lams;->b(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 145
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "resultJson":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    const-string/jumbo v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "result_code":Ljava/lang/String;
    const-string/jumbo v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v5, "fail"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "000001"

    .line 150
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "999999"

    .line 151
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    :cond_1
    iget-object v5, p0, Lams$1;->a:Lams;

    iget-object v7, p0, Lams$1;->a:Lams;

    invoke-static {v7, p5}, Lams;->a(Lams;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lams;->b(I)V

    .line 154
    const-string/jumbo v5, "BookBizModel"

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

    .line 155
    :try_start_4
    monitor-exit v6

    goto :goto_0

    .line 202
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

    .line 158
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "resultJson":Lorg/json/JSONObject;
    .restart local v3    # "result_code":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string/jumbo v5, "fail"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "010000"

    .line 159
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    iget-object v5, p0, Lams$1;->a:Lams;

    invoke-static {v5}, Lams;->b(Lams;)Lamy;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 162
    iget-object v5, p0, Lams$1;->a:Lams;

    invoke-static {v5}, Lams;->b(Lams;)Lamy;

    move-result-object v5

    invoke-interface {v5}, Lamy;->onUnLoginResult()V

    .line 163
    iget-object v5, p0, Lams$1;->a:Lams;

    iget-object v7, p0, Lams$1;->a:Lams;

    invoke-static {v7, p5}, Lams;->a(Lams;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lams;->b(I)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 169
    :cond_3
    const/16 v5, 0x6c

    if-ne p5, v5, :cond_4

    .line 170
    :try_start_7
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v7, "handleResult GET_BOOK_CONTENT_INFO "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v5, p0, Lams$1;->a:Lams;

    invoke-static {v5, v3, v4, v2}, Lams;->a(Lams;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 172
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 173
    :cond_4
    const/16 v5, 0x6a

    if-ne p5, v5, :cond_5

    .line 174
    :try_start_9
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v7, "handleResult GET_BOOK_CHAPTER_LIST "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v5, p0, Lams$1;->a:Lams;

    invoke-static {v5, v3, v4, v2}, Lams;->b(Lams;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 176
    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 177
    :cond_5
    const/16 v5, 0x6b

    if-ne p5, v5, :cond_6

    .line 178
    :try_start_b
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v7, "handleResult GET_BOOK_CHAPTER_INFO "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v5, p0, Lams$1;->a:Lams;

    invoke-static {v5, v3, v4, v2}, Lams;->c(Lams;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 180
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 181
    :cond_6
    const/16 v5, 0x75

    if-ne p5, v5, :cond_7

    .line 182
    :try_start_d
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v7, "handleResult BUY_BOOK "

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v5, p0, Lams$1;->a:Lams;

    invoke-static {v5, v3, v4, v2}, Lams;->d(Lams;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 184
    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 185
    :cond_7
    const/16 v5, 0x76

    if-ne p5, v5, :cond_8

    .line 186
    :try_start_f
    const-string/jumbo v5, "BookBizModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleResult REPORT_BOOK_TIME result_code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string/jumbo v5, "BookBizModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleResult REPORT_BOOK_TIME status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 188
    :try_start_10
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 189
    :cond_8
    const/16 v5, 0x80

    if-ne p5, v5, :cond_9

    .line 190
    :try_start_11
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v7, "handleResult get tip  voice"

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v5, p0, Lams$1;->a:Lams;

    invoke-static {v5, v3, v4, v2}, Lams;->e(Lams;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 198
    .end local v2    # "resultJson":Lorg/json/JSONObject;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :cond_9
    :goto_1
    :try_start_12
    iget-object v5, p0, Lams$1;->a:Lams;

    iget-object v7, p0, Lams$1;->a:Lams;

    invoke-static {v7, p5}, Lams;->a(Lams;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lams;->b(I)V

    .line 202
    .end local v1    # "response":Ljava/lang/String;
    :goto_2
    monitor-exit v6

    goto/16 :goto_0

    .line 194
    .restart local v1    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "BookBizModel"

    const-string/jumbo v7, "onResult Exception"

    invoke-static {v5, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 200
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "response":Ljava/lang/String;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_a
    iget-object v5, p0, Lams$1;->a:Lams;

    iget-object v7, p0, Lams$1;->a:Lams;

    invoke-static {v7, p5}, Lams;->a(Lams;I)I

    move-result v7

    invoke-virtual {v5, v7}, Lams;->b(I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_2
.end method
