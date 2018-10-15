.class Lamc$a$1;
.super Ljava/lang/Object;
.source "TextEventPresenter.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamc$a;->a(Lajm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lajm;

.field final synthetic b:Lamc$a;


# direct methods
.method constructor <init>(Lamc$a;Lajm;)V
    .locals 0
    .param p1, "this$1"    # Lamc$a;

    .prologue
    .line 111
    iput-object p1, p0, Lamc$a$1;->b:Lamc$a;

    iput-object p2, p0, Lamc$a$1;->a:Lajm;

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
    .line 114
    const-string/jumbo v5, "TextEventRequestHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u670d\u52a1\u5668\u8fd4\u56de\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string/jumbo v5, "TextEventRequestHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "errorCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",requestId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",requestType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/16 v5, 0x51

    if-ne v5, p5, :cond_0

    .line 119
    :try_start_0
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "realResult":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 121
    const-string/jumbo v5, "TextEventRequestHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request realResult="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "errorcode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "errCode":Ljava/lang/String;
    const-string/jumbo v5, "000000"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    const-string/jumbo v5, "ads"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 127
    .local v4, "temArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 128
    iget-object v5, p0, Lamc$a$1;->a:Lajm;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lajm;->onResult(Ljava/lang/String;)V

    .line 130
    iget-object v5, p0, Lamc$a$1;->b:Lamc$a;

    iget-object v5, v5, Lamc$a;->a:Lamc;

    const/16 v6, 0x3e9

    iget-object v7, p0, Lamc$a$1;->b:Lamc$a;

    iget-object v7, v7, Lamc$a;->a:Lamc;

    invoke-virtual {v7}, Lamc;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lamc;->c(Lamc;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "errCode":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "realResult":Ljava/lang/String;
    .end local v4    # "temArray":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TextEventRequestHelper"

    const-string/jumbo v6, "onResult exception "

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v5, p0, Lamc$a$1;->a:Lajm;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lajm;->onError(I)V

    .line 141
    iget-object v5, p0, Lamc$a$1;->b:Lamc$a;

    iget-object v5, v5, Lamc$a;->a:Lamc;

    const/16 v6, 0x3ea

    iget-object v7, p0, Lamc$a$1;->b:Lamc$a;

    iget-object v7, v7, Lamc$a;->a:Lamc;

    invoke-virtual {v7}, Lamc;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lamc;->d(Lamc;ILjava/lang/String;)V

    goto :goto_0
.end method
