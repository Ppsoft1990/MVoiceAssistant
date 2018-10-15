.class Lcom/migu/voiceads/utils/c/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/j$a;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/c/t;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/c/t;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/u;->a:Lcom/migu/voiceads/utils/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Request click response failed!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([B)V
    .locals 7

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p1, v0}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/c/u;->a:Lcom/migu/voiceads/utils/c/t;

    invoke-static {v1}, Lcom/migu/voiceads/utils/c/t;->a(Lcom/migu/voiceads/utils/c/t;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GDT 2th requested, response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "ret"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "dstlink"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "clickid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/utils/c/u;->a:Lcom/migu/voiceads/utils/c/t;

    invoke-static {v2}, Lcom/migu/voiceads/utils/c/t;->b(Lcom/migu/voiceads/utils/c/t;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/migu/voiceads/utils/c/u;->a:Lcom/migu/voiceads/utils/c/t;

    invoke-static {v3}, Lcom/migu/voiceads/utils/c/t;->c(Lcom/migu/voiceads/utils/c/t;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/migu/voiceads/utils/c/u;->a:Lcom/migu/voiceads/utils/c/t;

    invoke-static {v4}, Lcom/migu/voiceads/utils/c/t;->d(Lcom/migu/voiceads/utils/c/t;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/migu/voiceads/utils/c/u;->a:Lcom/migu/voiceads/utils/c/t;

    invoke-static {v5}, Lcom/migu/voiceads/utils/c/t;->e(Lcom/migu/voiceads/utils/c/t;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/migu/voiceads/utils/a/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "url_download_start"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "url_download_success"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "url_install_success"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "url_install_start"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/migu/voiceads/utils/c/a;->a()Lcom/migu/voiceads/utils/c/a;

    move-result-object v1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/u;->a:Lcom/migu/voiceads/utils/c/t;

    invoke-static {v0}, Lcom/migu/voiceads/utils/c/t;->a(Lcom/migu/voiceads/utils/c/t;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/u;->a:Lcom/migu/voiceads/utils/c/t;

    invoke-static {v0}, Lcom/migu/voiceads/utils/c/t;->f(Lcom/migu/voiceads/utils/c/t;)Lcom/migu/voiceads/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/c/a;->a(Lcom/migu/voiceads/a/a;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/u;->a:Lcom/migu/voiceads/utils/c/t;

    invoke-static {v0}, Lcom/migu/voiceads/utils/c/t;->a(Lcom/migu/voiceads/utils/c/t;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/migu/voiceads/utils/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "invalid ad content!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b([B)V
    .locals 0

    return-void
.end method
