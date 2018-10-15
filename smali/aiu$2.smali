.class Laiu$2;
.super Ljava/lang/Object;
.source "HomeAudioResourcePresenter.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laiu;


# direct methods
.method constructor <init>(Laiu;)V
    .locals 0
    .param p1, "this$0"    # Laiu;

    .prologue
    .line 165
    iput-object p1, p0, Laiu$2;->a:Laiu;

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
    .line 168
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    move-object v6, p2

    .line 169
    check-cast v6, Lwa;

    invoke-virtual {v6}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "response":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    const-string/jumbo v6, "HomeAudioResourcePresenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResult:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "errorCode"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "returnCode":Ljava/lang/String;
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "status":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 177
    const-string/jumbo v6, "000000"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "success"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 178
    iget-object v6, p0, Laiu$2;->a:Laiu;

    invoke-static {v6}, Laiu;->b(Laiu;)Lair;

    move-result-object v6

    invoke-virtual {v6, v3}, Lair;->a(Ljava/lang/String;)Laiy;

    move-result-object v0

    .line 179
    .local v0, "cardItem":Laiy;
    iget-object v6, p0, Laiu$2;->a:Laiu;

    invoke-static {v6}, Laiu;->c(Laiu;)Laiw;

    move-result-object v6

    invoke-interface {v6, v3}, Laiw;->a(Ljava/lang/String;)V

    .line 180
    iget-object v6, p0, Laiu$2;->a:Laiu;

    invoke-static {v6}, Laiu;->b(Laiu;)Lair;

    move-result-object v6

    invoke-virtual {v6, v0}, Lair;->a(Laiy;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    iget-object v6, p0, Laiu$2;->a:Laiu;

    invoke-static {v6, v0}, Laiu;->a(Laiu;Laiy;)Laiy;

    .line 182
    iget-object v6, p0, Laiu$2;->a:Laiu;

    const/16 v7, 0x3e9

    iget-object v8, p0, Laiu$2;->a:Laiu;

    invoke-virtual {v8}, Laiu;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Laiu;->a(Laiu;ILjava/lang/String;)V

    .line 196
    .end local v0    # "cardItem":Laiy;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "returnCode":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 186
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v4    # "returnCode":Ljava/lang/String;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "HomeAudioResourcePresenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u63a5\u53e3\u8bf7\u6c42\u5931\u8d25:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "returnCode":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v6, p0, Laiu$2;->a:Laiu;

    invoke-static {v6}, Laiu;->c(Laiu;)Laiw;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-interface {v6, v7}, Laiw;->a(Ljava/lang/String;)V

    .line 195
    iget-object v6, p0, Laiu$2;->a:Laiu;

    const/16 v7, 0x3ea

    iget-object v8, p0, Laiu$2;->a:Laiu;

    invoke-virtual {v8}, Laiu;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Laiu;->b(Laiu;ILjava/lang/String;)V

    goto :goto_0

    .line 189
    .restart local v3    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "HomeAudioResourcePresenter"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
