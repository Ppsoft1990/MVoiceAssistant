.class Lqz$1;
.super Ljava/lang/Object;
.source "MicDiscoverTabBizHandler.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqz;


# direct methods
.method constructor <init>(Lqz;)V
    .locals 0
    .param p1, "this$0"    # Lqz;

    .prologue
    .line 48
    iput-object p1, p0, Lqz$1;->a:Lqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 51
    const-string/jumbo v7, "MicDiscoverTabBizHandler"

    const-string/jumbo v8, "onResult "

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    .line 53
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "response":Ljava/lang/String;
    const-string/jumbo v7, "MicDiscoverTabBizHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onResult response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 56
    const-string/jumbo v7, "MicDiscoverTabBizHandler"

    const-string/jumbo v8, "onResult response is not null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, "resultJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "errorCode"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "resultCode":Ljava/lang/String;
    const-string/jumbo v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v7, "000000"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "success"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    const-string/jumbo v7, "MicDiscoverTabBizHandler"

    const-string/jumbo v8, "onResult errorCode is right"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string/jumbo v7, "result"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "tabResult":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 66
    iget-object v7, p0, Lqz$1;->a:Lqz;

    invoke-static {v7}, Lqz;->a(Lqz;)Lrd;

    move-result-object v7

    invoke-virtual {v7, v6}, Lrd;->a(Ljava/lang/String;)Lrc;

    move-result-object v5

    .line 68
    .local v5, "tabData":Lrc;
    if-eqz v5, :cond_1

    .line 70
    iget-object v7, p0, Lqz$1;->a:Lqz;

    invoke-static {v7}, Lqz;->b(Lqz;)Lrb;

    move-result-object v7

    invoke-virtual {v7, v5}, Lrb;->a(Lrc;)V

    .line 71
    iget-object v7, p0, Lqz$1;->a:Lqz;

    invoke-static {v7}, Lqz;->c(Lqz;)Lre;

    move-result-object v7

    invoke-interface {v7, v5}, Lre;->a(Lrc;)V

    .line 89
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "resultCode":Ljava/lang/String;
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    .end local v4    # "status":Ljava/lang/String;
    .end local v5    # "tabData":Lrc;
    .end local v6    # "tabResult":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "resultCode":Ljava/lang/String;
    .restart local v3    # "resultJson":Lorg/json/JSONObject;
    .restart local v4    # "status":Ljava/lang/String;
    .restart local v5    # "tabData":Lrc;
    .restart local v6    # "tabResult":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lqz$1;->a:Lqz;

    invoke-static {v7}, Lqz;->c(Lqz;)Lre;

    move-result-object v7

    invoke-interface {v7}, Lre;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v2    # "resultCode":Ljava/lang/String;
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    .end local v4    # "status":Ljava/lang/String;
    .end local v5    # "tabData":Lrc;
    .end local v6    # "tabResult":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "MicDiscoverTabBizHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onResult error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v7, p0, Lqz$1;->a:Lqz;

    invoke-static {v7}, Lqz;->c(Lqz;)Lre;

    move-result-object v7

    invoke-interface {v7}, Lre;->a()V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "resultCode":Ljava/lang/String;
    .restart local v3    # "resultJson":Lorg/json/JSONObject;
    .restart local v4    # "status":Ljava/lang/String;
    .restart local v6    # "tabResult":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lqz$1;->a:Lqz;

    invoke-static {v7}, Lqz;->c(Lqz;)Lre;

    move-result-object v7

    invoke-interface {v7}, Lre;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    .end local v2    # "resultCode":Ljava/lang/String;
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    .end local v4    # "status":Ljava/lang/String;
    .end local v6    # "tabResult":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lqz$1;->a:Lqz;

    invoke-static {v7}, Lqz;->c(Lqz;)Lre;

    move-result-object v7

    invoke-interface {v7}, Lre;->a()V

    goto :goto_0

    .line 87
    .end local v1    # "response":Ljava/lang/String;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_4
    iget-object v7, p0, Lqz$1;->a:Lqz;

    invoke-static {v7}, Lqz;->c(Lqz;)Lre;

    move-result-object v7

    invoke-interface {v7}, Lre;->a()V

    goto :goto_0
.end method
