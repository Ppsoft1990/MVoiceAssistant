.class public final Lcom/migu/uem/statistics/page/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/migu/uem/statistics/page/b;


# instance fields
.field private a:Lcom/migu/uem/statistics/page/bean/Page;

.field private b:Ljava/util/Map;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/statistics/page/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/migu/uem/statistics/page/b;
    .locals 2

    sget-object v0, Lcom/migu/uem/statistics/page/b;->c:Lcom/migu/uem/statistics/page/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/migu/uem/statistics/page/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/migu/uem/statistics/page/b;->c:Lcom/migu/uem/statistics/page/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/statistics/page/b;

    invoke-direct {v0}, Lcom/migu/uem/statistics/page/b;-><init>()V

    sput-object v0, Lcom/migu/uem/statistics/page/b;->c:Lcom/migu/uem/statistics/page/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/migu/uem/statistics/page/b;->c:Lcom/migu/uem/statistics/page/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x12f

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/migu/uem/statistics/deeplink/a;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/migu/uem/c/d;

    invoke-direct {v0}, Lcom/migu/uem/c/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/migu/uem/c/d;->d(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Lcom/migu/uem/c/d;

    invoke-direct {v1}, Lcom/migu/uem/c/d;-><init>()V

    invoke-virtual {v1, p0}, Lcom/migu/uem/c/d;->a(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Lcom/migu/uem/c/d;

    invoke-direct {v2}, Lcom/migu/uem/c/d;-><init>()V

    invoke-virtual {v2, p0}, Lcom/migu/uem/c/d;->b(Landroid/content/Context;)I

    move-result v2

    if-eqz v0, :cond_0

    if-ne v3, v1, :cond_0

    if-ne v2, v3, :cond_0

    invoke-static {p0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/migu/uem/statistics/deeplink/a;->c(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9875\u9762\u8bbf\u95ee\u6570\u636e\u91cf\u89e6\u53d1\u9608\u503c "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.migu.uem.noti_to_remote"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "noti_romote_key_id"

    const/16 v3, 0x512

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized c(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/migu/uem/c/d;

    invoke-direct {v0}, Lcom/migu/uem/c/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/migu/uem/c/d;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    const-string/jumbo v0, "\u9875\u9762\u6570\u636e\u4e0d\u91c7\u96c6"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->getEndTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->getStartTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4fdd\u5b58\u9875\u9762:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/migu/uem/statistics/page/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/uem/statistics/page/bean/Page;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->getEndTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->getStartTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4fdd\u5b58\u9875\u9762:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/migu/uem/statistics/page/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    new-instance v0, Lcom/migu/uem/c/d;

    invoke-direct {v0}, Lcom/migu/uem/c/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/migu/uem/c/d;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const-string/jumbo v0, "\u9875\u9762\u6570\u636e\u4e0d\u91c7\u96c6"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->getEndTime()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    invoke-virtual {v0, v2, v3}, Lcom/migu/uem/statistics/page/bean/Page;->setEndTime(J)V

    :cond_3
    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/uem/statistics/page/bean/Page;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->getEndTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    invoke-virtual {v0, v2, v3}, Lcom/migu/uem/statistics/page/bean/Page;->setEndTime(J)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Lcom/migu/uem/statistics/page/bean/Page;

    invoke-direct {v1}, Lcom/migu/uem/statistics/page/bean/Page;-><init>()V

    invoke-virtual {v1, p2}, Lcom/migu/uem/statistics/page/bean/Page;->setAliasName(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/migu/uem/statistics/page/bean/Page;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/migu/uem/statistics/page/bean/Page;->setStartTime(J)V

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    invoke-virtual {v0, v2, v3}, Lcom/migu/uem/statistics/page/bean/Page;->setNextPageEnterTime(J)V

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/uem/statistics/page/bean/Page;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v3}, Lcom/migu/uem/statistics/page/bean/Page;->setNextPageEnterTime(J)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/migu/uem/statistics/page/b;->c(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/migu/uem/b/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/uem/statistics/page/bean/Page;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/migu/uem/statistics/page/bean/Page;->setEndTime(J)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/migu/uem/statistics/page/bean/Page;

    invoke-direct {v2}, Lcom/migu/uem/statistics/page/bean/Page;-><init>()V

    invoke-virtual {v2, p1}, Lcom/migu/uem/statistics/page/bean/Page;->setAliasName(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/migu/uem/statistics/page/bean/Page;->setName(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/migu/uem/statistics/page/bean/Page;->setStartTime(J)V

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/migu/uem/statistics/page/bean/Page;->setEndTime(J)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lcom/migu/uem/c/d;

    invoke-direct {v0}, Lcom/migu/uem/c/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/migu/uem/c/d;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u754c\u9762\u6570\u636e\u4e0d\u91c7\u96c6"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v5, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->getEndTime()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->getStartTime()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4fdd\u5b58\u9875\u9762:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v1

    const/16 v2, 0x12f

    invoke-virtual {v1, v2, v0}, Lcom/migu/uem/statistics/deeplink/a;->a(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/uem/statistics/page/bean/Page;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->getEndTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->getStartTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    invoke-virtual {v0}, Lcom/migu/uem/statistics/page/bean/Page;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4fdd\u5b58\u9875\u9762:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v2

    const/16 v3, 0x12f

    invoke-virtual {v2, v3, v0}, Lcom/migu/uem/statistics/deeplink/a;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-object v5, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_5
    iput-object v5, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_6
    iget-object v0, p0, Lcom/migu/uem/statistics/page/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-object v5, p0, Lcom/migu/uem/statistics/page/b;->a:Lcom/migu/uem/statistics/page/bean/Page;

    iget-object v1, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/migu/uem/statistics/page/b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_7
    iget-object v1, p0, Lcom/migu/uem/statistics/page/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
