.class Lcom/iflytek/framework/business/components/PicComponents$2;
.super Ljava/lang/Object;
.source "PicComponents.java"

# interfaces
.implements Lazd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/PicComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/PicComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/PicComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/PicComponents;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/iflytek/framework/business/components/PicComponents$2;->this$0:Lcom/iflytek/framework/business/components/PicComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents$2;->this$0:Lcom/iflytek/framework/business/components/PicComponents;

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lcom/iflytek/framework/business/components/PicComponents;->access$100(Lcom/iflytek/framework/business/components/PicComponents;ILjava/lang/String;)V

    .line 171
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 129
    const v2, 0x35b6c

    .line 130
    .local v2, "errorCode":I
    const/4 v3, 0x0

    .line 131
    .local v3, "remmoteId":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 133
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    .local v4, "result":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 135
    const-string/jumbo v7, "errorcode"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v7, "status"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v7, "Business_PicComponents"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RESULT_ERROR_CODE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string/jumbo v7, "000000"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "success"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 139
    const-string/jumbo v7, "Business_PicComponents"

    const-string/jumbo v8, "upload pic success"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string/jumbo v7, "result"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 141
    .local v5, "resultObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 142
    const-string/jumbo v7, "remmoteid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 144
    const-string/jumbo v7, "Business_PicComponents"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "serverid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string/jumbo v7, "Business_PicComponents"

    const-string/jumbo v8, "upload pic success"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    const/4 v2, 0x0

    .line 165
    .end local v0    # "code":Ljava/lang/String;
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v5    # "resultObj":Lorg/json/JSONObject;
    .end local v6    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/iflytek/framework/business/components/PicComponents$2;->this$0:Lcom/iflytek/framework/business/components/PicComponents;

    invoke-static {v7, v2, v3}, Lcom/iflytek/framework/business/components/PicComponents;->access$100(Lcom/iflytek/framework/business/components/PicComponents;ILjava/lang/String;)V

    .line 166
    return-void

    .line 149
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v4    # "result":Lorg/json/JSONObject;
    .restart local v5    # "resultObj":Lorg/json/JSONObject;
    .restart local v6    # "status":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v7, "Business_PicComponents"

    const-string/jumbo v8, "serverid is null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const v2, 0x35b69

    goto :goto_0

    .line 153
    .end local v5    # "resultObj":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v7, "100101"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 154
    const-string/jumbo v7, "Business_PicComponents"

    const-string/jumbo v8, "pic is over size"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    const v2, 0x35b65

    goto :goto_0

    .line 158
    .end local v0    # "code":Ljava/lang/String;
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v6    # "status":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Business_PicComponents"

    const-string/jumbo v8, "error "

    invoke-static {v7, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v7, "Business_PicComponents"

    const-string/jumbo v8, "response is null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const v2, 0x35b68

    goto :goto_0
.end method
