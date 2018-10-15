.class final Lcom/migu/uem/a/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/uem/a/d/a;


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/migu/uem/a/d/c;


# direct methods
.method constructor <init>(Lcom/migu/uem/a/d/c;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/a/d/d;->c:Lcom/migu/uem/a/d/c;

    iput p2, p0, Lcom/migu/uem/a/d/d;->a:I

    iput-object p3, p0, Lcom/migu/uem/a/d/d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lcom/migu/uem/c/b;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/migu/uem/a/d/c;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload failed code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->c(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/migu/uem/c/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/d/d;->c:Lcom/migu/uem/a/d/c;

    invoke-static {v0}, Lcom/migu/uem/a/d/c;->a(Lcom/migu/uem/a/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_0
    invoke-virtual {p3}, Lcom/migu/uem/c/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/a/d/d;->c:Lcom/migu/uem/a/d/c;

    invoke-static {v0}, Lcom/migu/uem/a/d/c;->b(Lcom/migu/uem/a/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_1
    invoke-virtual {p3}, Lcom/migu/uem/c/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/uem/a/d/d;->c:Lcom/migu/uem/a/d/c;

    invoke-static {v0}, Lcom/migu/uem/a/d/c;->c(Lcom/migu/uem/a/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_2
    const/4 v0, -0x2

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/migu/uem/a/d/d;->c:Lcom/migu/uem/a/d/c;

    iget-object v1, p0, Lcom/migu/uem/a/d/d;->b:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/migu/uem/c/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final a([BLcom/migu/uem/c/b;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/migu/uem/c/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/d/d;->c:Lcom/migu/uem/a/d/c;

    invoke-static {v0}, Lcom/migu/uem/a/d/c;->a(Lcom/migu/uem/a/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_0
    invoke-virtual {p2}, Lcom/migu/uem/c/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/a/d/d;->c:Lcom/migu/uem/a/d/c;

    invoke-static {v0}, Lcom/migu/uem/a/d/c;->b(Lcom/migu/uem/a/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_1
    invoke-virtual {p2}, Lcom/migu/uem/c/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/uem/a/d/d;->c:Lcom/migu/uem/a/d/c;

    invoke-static {v0}, Lcom/migu/uem/a/d/c;->c(Lcom/migu/uem/a/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/migu/uem/c/b;->f()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/migu/uem/c/b;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "CARR_APPLIST"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v1, "STRATEGY"

    iget v2, p0, Lcom/migu/uem/a/d/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/migu/uem/a/d/d;->c:Lcom/migu/uem/a/d/c;

    iget-object v2, p0, Lcom/migu/uem/a/d/d;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/migu/uem/c/b;->e()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/migu/uem/c/b;->d()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "utf-8"

    invoke-direct {v6, p1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "post returned data\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "200"

    const-string/jumbo v8, "code"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v6

    const-string/jumbo v7, "lastQuestTime_all"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    :cond_4
    :goto_0
    const-string/jumbo v6, "CARR_APPLIST"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v6

    const-string/jumbo v7, "upload_applist_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    :cond_5
    const-string/jumbo v6, "STRATEGY"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v6, v0, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    const-string/jumbo v6, "\u5220\u9664ocinfo\u6570\u636e"

    invoke-static {v6}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v6

    const/16 v7, 0xca

    invoke-virtual {v6, v7}, Lcom/migu/uem/statistics/deeplink/a;->a(I)V

    :cond_6
    and-int/lit8 v6, v0, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_7

    const-string/jumbo v6, "\u5220\u9664event\u6570\u636e"

    invoke-static {v6}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v6

    const/16 v7, 0x194

    invoke-virtual {v6, v7, v4, v5}, Lcom/migu/uem/statistics/deeplink/a;->a(IJ)V

    :cond_7
    and-int/lit8 v6, v0, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    const-string/jumbo v6, "\u5220\u9664page\u6570\u636e"

    invoke-static {v6}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v6

    const/16 v7, 0x12f

    invoke-virtual {v6, v7, v4, v5}, Lcom/migu/uem/statistics/deeplink/a;->a(IJ)V

    :cond_8
    and-int/lit8 v0, v0, 0x1f

    const/16 v4, 0x1f

    if-ne v0, v4, :cond_9

    const-string/jumbo v0, "\u66f4\u65b0device\u6570\u636e"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/migu/uem/a/a/b;->b(Landroid/content/Context;)V

    :cond_9
    const-string/jumbo v0, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v4, "uploadFailedNumber_all"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :cond_a
    :goto_1
    const-string/jumbo v0, "upload data success"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_b
    const-string/jumbo v6, "3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v6

    const-string/jumbo v7, "lastQuestTime_page"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "upload data failed"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    :try_start_1
    const-string/jumbo v6, "2"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v6

    const-string/jumbo v7, "lastQuestTime_event"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "byte encode to string error!"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    :try_start_2
    const-string/jumbo v0, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v4, "uploadFailedNumber_page"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_e
    const-string/jumbo v0, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v4, "uploadFailedNumber_event"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_f
    invoke-virtual {v1, v2, v3}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    invoke-virtual {v1, v2, v3}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method
