.class public final Lcom/migu/uem/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/migu/uem/a/a/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/migu/uem/a/a/a;
    .locals 2

    sget-object v0, Lcom/migu/uem/a/a/a;->a:Lcom/migu/uem/a/a/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/migu/uem/a/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/migu/uem/a/a/a;->a:Lcom/migu/uem/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/a/a/a;

    invoke-direct {v0}, Lcom/migu/uem/a/a/a;-><init>()V

    sput-object v0, Lcom/migu/uem/a/a/a;->a:Lcom/migu/uem/a/a/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/migu/uem/a/a/a;->a:Lcom/migu/uem/a/a/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    const-string/jumbo v0, "add device info to upload !"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v4, 0x65

    invoke-virtual {v0, v4}, Lcom/migu/uem/statistics/deeplink/a;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_6

    invoke-static {p0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v4, 0x65

    invoke-virtual {v0, v4}, Lcom/migu/uem/statistics/deeplink/a;->a(I)V

    invoke-static {p0}, Lcom/migu/uem/a/a/b;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    invoke-static {p0, v3}, Lcom/migu/uem/a/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_1
    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v4, "data_upload_pageinfo"

    invoke-virtual {v0, v4, v1}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    and-int/lit8 v0, p1, 0x4

    if-ne v0, v8, :cond_2

    invoke-static {p0, v3}, Lcom/migu/uem/a/a/a;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_2
    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v4, "data_upload_event"

    invoke-virtual {v0, v4, v1}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    and-int/lit8 v0, p1, 0x8

    if-ne v0, v9, :cond_3

    invoke-static {p0, v3}, Lcom/migu/uem/a/a/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_3
    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v4, "data_upload_appinfo"

    invoke-virtual {v0, v4, v1}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    and-int/lit8 v0, p1, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_5

    :try_start_1
    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v4, "upload_applist_time"

    invoke-virtual {v0, v4}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x240c8400

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    :cond_4
    const-string/jumbo v0, "add install app info to upload !"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v4, 0x25e

    invoke-virtual {v0, v4}, Lcom/migu/uem/statistics/deeplink/a;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    new-instance v4, Lorg/json/JSONArray;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "AppInstallList"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    and-int/lit8 v0, p1, 0x1f

    const/16 v4, 0x1f

    if-eq v0, v4, :cond_9

    and-int/lit8 v0, p1, 0x8

    if-ne v0, v9, :cond_7

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_7

    const-string/jumbo v0, "Events"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_6
    const/4 v4, 0x0

    :try_start_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "DevInfo"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v8, :cond_9

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_9

    const-string/jumbo v0, "PageLinked"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "add open info to upload !"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/migu/uem/statistics/deeplink/a;->b(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "OCInfo"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "add page info to upload !"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Lcom/migu/uem/statistics/deeplink/a;->b(I)Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "page data size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "PageLinked"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "add event info to upload !"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/migu/uem/statistics/event/a;->a()Lcom/migu/uem/statistics/event/a;

    invoke-static {p0}, Lcom/migu/uem/statistics/event/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event data size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "Events"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
