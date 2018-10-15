.class Lakr$2;
.super Ljava/lang/Object;
.source "ListenBookRecommendPresenter.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lakr;


# direct methods
.method constructor <init>(Lakr;)V
    .locals 0
    .param p1, "this$0"    # Lakr;

    .prologue
    .line 94
    iput-object p1, p0, Lakr$2;->a:Lakr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 98
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 99
    :try_start_0
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "response":Ljava/lang/String;
    const-string/jumbo v4, "ListenBookRecommendPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onresult:\u542c\u4e66\u63a8\u8350\u4f4d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "errorcode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "errorcode":Ljava/lang/String;
    const-string/jumbo v4, "000000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lakr$2;->a:Lakr;

    invoke-static {v4}, Lakr;->b(Lakr;)Lajk;

    move-result-object v4

    invoke-interface {v4, v3}, Lajk;->a(Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lakr$2;->a:Lakr;

    const/16 v5, 0x3e9

    iget-object v6, p0, Lakr$2;->a:Lakr;

    invoke-virtual {v6}, Lakr;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lakr;->a(Lakr;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "errorcode":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "response":Ljava/lang/String;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "ListenBookRecommendPresenter"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v4, "ListenBookRecommendPresenter"

    const-string/jumbo v5, "errorCode\u4e0d\u4e3a0"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lakr$2;->a:Lakr;

    invoke-static {v4}, Lakr;->b(Lakr;)Lajk;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lajk;->a(Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lakr$2;->a:Lakr;

    const/16 v5, 0x3ea

    iget-object v6, p0, Lakr$2;->a:Lakr;

    invoke-virtual {v6}, Lakr;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lakr;->b(Lakr;ILjava/lang/String;)V

    goto :goto_0
.end method
