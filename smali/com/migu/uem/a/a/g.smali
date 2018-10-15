.class public final Lcom/migu/uem/a/a/g;
.super Lcom/migu/uem/a/f;

# interfaces
.implements Lcom/migu/uem/a/d/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/migu/uem/a/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/migu/uem/a/a/g;->b:Ljava/lang/String;

    const-string/jumbo v0, "amberConfigWebAuto"

    invoke-static {v0}, Lcom/migu/uem/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/a/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/uem/a/a/g;->e:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/a/g;->c:Ljava/lang/String;

    const-string/jumbo v0, "2.3.0"

    iget-object v1, p0, Lcom/migu/uem/a/a/g;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/a/g;->d:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/a/c;->a(Landroid/content/Context;)Lcom/migu/uem/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/a/c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "request url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/uem/a/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/migu/uem/c/b;

    iget-object v1, p0, Lcom/migu/uem/a/a/g;->b:Ljava/lang/String;

    sget-object v2, Lcom/migu/uem/a/d/b;->a:Lcom/migu/uem/a/d/b;

    invoke-direct {v0, v1, p0, v2}, Lcom/migu/uem/c/b;-><init>(Ljava/lang/String;Lcom/migu/uem/a/d/a;Lcom/migu/uem/a/d/b;)V

    const-string/jumbo v1, "appKey"

    iget-object v2, p0, Lcom/migu/uem/a/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/migu/uem/a/a/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/migu/uem/a/d/a/c;

    invoke-direct {v1, v0}, Lcom/migu/uem/a/d/a/c;-><init>(Lcom/migu/uem/c/b;)V

    invoke-virtual {v1}, Lcom/migu/uem/a/d/a/c;->b()V

    return-void
.end method

.method public final a(ILjava/lang/String;Lcom/migu/uem/c/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/migu/uem/a/a/g;->d()V

    return-void
.end method

.method public final a([BLcom/migu/uem/c/b;)V
    .locals 9

    const/4 v1, 0x1

    const/16 v7, -0xc8

    if-eqz p1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http successful:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "code"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_5

    const-string/jumbo v0, "pageInfo"

    const/16 v2, -0xc8

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_7

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "data_upload_pageinfo"

    invoke-virtual {v2, v3, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    if-nez v0, :cond_d

    const-string/jumbo v2, "\u6e05\u9664\u754c\u9762\u6570\u636e"

    invoke-static {v2}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v2

    const/16 v3, 0x12f

    invoke-virtual {v2, v3}, Lcom/migu/uem/statistics/deeplink/a;->a(I)V

    move v3, v0

    :goto_0
    const-string/jumbo v0, "crash"

    const/16 v2, -0xc8

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_0

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v5, "data_upload_crash"

    invoke-virtual {v2, v5, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v0, "event"

    const/16 v2, -0xc8

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_8

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v5, "data_upload_event"

    invoke-virtual {v2, v5, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    if-nez v0, :cond_c

    const-string/jumbo v2, "\u6e05\u9664\u4e8b\u4ef6\u6570\u636e"

    invoke-static {v2}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v2

    const/16 v5, 0x194

    invoke-virtual {v2, v5}, Lcom/migu/uem/statistics/deeplink/a;->a(I)V

    move v2, v0

    :goto_1
    const-string/jumbo v0, "location"

    const/16 v5, -0xc8

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_1

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v5

    const-string/jumbo v6, "data_upload_location"

    invoke-virtual {v5, v6, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :cond_1
    const-string/jumbo v0, "appInfo"

    const/16 v5, -0xc8

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_2

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v5

    const-string/jumbo v6, "data_upload_appinfo"

    invoke-virtual {v5, v6, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :cond_2
    const-string/jumbo v0, "netWork"

    const/16 v5, -0xc8

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_3

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v5

    const-string/jumbo v6, "data_upload_network"

    invoke-virtual {v5, v6, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :cond_3
    const-string/jumbo v0, "logAccount"

    const/16 v5, -0xc8

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_4

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v5

    const-string/jumbo v6, "data_upload_logaccount"

    invoke-virtual {v5, v6, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :cond_4
    const-string/jumbo v0, "cycle"

    const/16 v5, -0xc8

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u4e0a\u4f20\u95f4\u9694\u503c\u4e3a cycle:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    if-eq v0, v7, :cond_9

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v5, "data_upload_control"

    invoke-virtual {v1, v5, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :goto_2
    const-string/jumbo v1, "eventConfig"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string/jumbo v5, "eventMillis"

    const/16 v6, 0xa

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "eventCounts"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v6

    const-string/jumbo v7, "data_event_millis"

    invoke-virtual {v6, v7, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v5

    const-string/jumbo v6, "data_event_count"

    invoke-virtual {v5, v6, v1}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :goto_3
    const-string/jumbo v1, "pageConfig"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string/jumbo v4, "pageMillis"

    const/16 v5, 0x3c

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "pageCounts"

    const/16 v6, 0x1e

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v5

    const-string/jumbo v6, "data_page_millis"

    invoke-virtual {v5, v6, v4}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v4

    const-string/jumbo v5, "data_page_count"

    invoke-virtual {v4, v5, v1}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :goto_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.migu.uem.noti_to_main"

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "data_int"

    const/16 v6, 0x12f

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "data_int2"

    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v3, 0x1

    aput v2, v6, v3

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v3

    const-string/jumbo v7, "data_page_count"

    const/16 v8, 0x1e

    invoke-virtual {v3, v7, v8}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v3

    aput v3, v6, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v3

    const-string/jumbo v7, "data_event_count"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v3

    aput v3, v6, v2

    const/4 v2, 0x4

    aput v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_5
    invoke-direct {p0}, Lcom/migu/uem/a/a/g;->d()V

    :cond_6
    return-void

    :cond_7
    move v3, v1

    goto/16 :goto_0

    :cond_8
    move v2, v1

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_2

    :cond_a
    :try_start_1
    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v5, "data_event_millis"

    const/16 v6, 0xa

    invoke-virtual {v1, v5, v6}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v5, "data_event_count"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v4, "data_page_millis"

    const/16 v5, 0x3c

    invoke-virtual {v1, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/migu/uem/a/a/g;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v4, "data_page_count"

    const/16 v5, 0x1e

    invoke-virtual {v1, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_c
    move v2, v0

    goto/16 :goto_1

    :cond_d
    move v3, v0

    goto/16 :goto_0
.end method
