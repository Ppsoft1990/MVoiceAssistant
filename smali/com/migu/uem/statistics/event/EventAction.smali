.class public final Lcom/migu/uem/statistics/event/EventAction;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_PARAM_COUNT:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/migu/uem/statistics/event/EventAction;->onEvent(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lcom/migu/uem/c/d;

    invoke-direct {v0}, Lcom/migu/uem/c/d;-><init>()V

    invoke-virtual {v0, p2}, Lcom/migu/uem/c/d;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u4e8b\u4ef6\u6570\u636e\u4e0d\u91c7\u96c6"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6dfb\u52a0\u4e8b\u4ef6:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    new-instance v3, Lcom/migu/uem/statistics/event/bean/Action;

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    iget-object v0, v0, Lcom/migu/uem/comm/a;->a:Ljava/lang/String;

    invoke-direct {v3, v0, p0}, Lcom/migu/uem/statistics/event/bean/Action;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Lcom/migu/uem/statistics/event/bean/ActionData;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lcom/migu/uem/statistics/event/bean/ActionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/migu/uem/statistics/event/bean/Action;->addActionData(Lcom/migu/uem/statistics/event/bean/ActionData;)V

    const/16 v0, 0x32

    if-lt v2, v0, :cond_4

    :cond_2
    invoke-static {}, Lcom/migu/uem/statistics/event/a;->a()Lcom/migu/uem/statistics/event/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_0

    :try_start_1
    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/comm/a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "\u6ca1\u6709\u8c03\u7528SDK\u521d\u59cb\u5316"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/migu/uem/a/a;->a()Lcom/migu/uem/a/a;

    move-result-object v0

    new-instance v1, Lcom/migu/uem/statistics/event/b;

    invoke-direct {v1, p2, v3}, Lcom/migu/uem/statistics/event/b;-><init>(Landroid/content/Context;Lcom/migu/uem/statistics/event/bean/Action;)V

    invoke-virtual {v0, v1}, Lcom/migu/uem/a/a;->a(Lcom/migu/uem/a/f;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method
