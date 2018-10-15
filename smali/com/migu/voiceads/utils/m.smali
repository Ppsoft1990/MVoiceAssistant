.class public Lcom/migu/voiceads/utils/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 6

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/m;->a(Ljava/lang/String;Lcom/migu/voiceads/utils/j$a;)V

    const-string/jumbo v3, "Ad_Android_SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MonitorUtil: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/migu/voiceads/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "monitor: no valid url"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "MonitorUtil::sendMonitor() error"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/migu/voiceads/utils/j$a;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/migu/voiceads/utils/j;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/j;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/j;->b(I)V

    invoke-virtual {v0, p0, v2, v2}, Lcom/migu/voiceads/utils/j;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/utils/j;->a(Lcom/migu/voiceads/utils/j$a;)V

    return-void
.end method
