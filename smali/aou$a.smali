.class Laou$a;
.super Ljava/lang/Object;
.source "SMSCollector.java"

# interfaces
.implements Lwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Laou;

.field private volatile b:Z


# direct methods
.method constructor <init>(Laou;)V
    .locals 1
    .param p1, "this$0"    # Laou;

    .prologue
    .line 279
    iput-object p1, p0, Laou$a;->a:Laou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Laou$a;->b:Z

    return-void
.end method


# virtual methods
.method public a(IJI)V
    .locals 3
    .param p1, "requestType"    # I
    .param p2, "requestId"    # J
    .param p4, "errorCode"    # I

    .prologue
    .line 327
    iget-object v0, p0, Laou$a;->a:Laou;

    invoke-virtual {v0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onError()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laou$a;->a(Z)V

    .line 329
    iget-object v0, p0, Laou$a;->a:Laou;

    invoke-virtual {v0}, Laou;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u77ed\u4fe1\u4e0a\u4f20\u7ed3\u679c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laou$a;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public a(Lwa;)V
    .locals 7
    .param p1, "result"    # Lwa;

    .prologue
    const/4 v6, 0x0

    .line 296
    iget-object v4, p0, Laou$a;->a:Laou;

    invoke-virtual {v4}, Laou;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onResult()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p1}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "resultInfo":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    :cond_0
    invoke-virtual {p0, v6}, Laou$a;->a(Z)V

    .line 317
    :goto_0
    iget-object v4, p0, Laou$a;->a:Laou;

    invoke-virtual {v4}, Laou;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u77ed\u4fe1\u4e0a\u4f20\u7ed3\u679c:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Laou$a;->a()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 304
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "retcode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "errorCode":Ljava/lang/String;
    const-string/jumbo v4, "000000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Laou$a;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Laou$a;->a:Laou;

    invoke-virtual {v4}, Laou;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "JSONException"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0, v6}, Laou$a;->a(Z)V

    goto :goto_0

    .line 309
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "errorCode":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v4}, Laou$a;->a(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Laou$a;->b:Z

    .line 287
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Laou$a;->b:Z

    return v0
.end method
