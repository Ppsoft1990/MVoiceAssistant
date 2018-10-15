.class public Lcom/iflytek/blc/log/OpLogProxy;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iflytek/blc/log/LogPriority;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/iflytek/blc/log/OpLogProxy;->addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iflytek/blc/log/LogPriority;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, v0, v1}, Lcom/iflytek/blc/log/OpLogProxy;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    invoke-static {p4}, Lcom/iflytek/blc/util/LogUtil;->priority2Int(Lcom/iflytek/blc/log/LogPriority;)I

    move-result v5

    invoke-static {p5}, Lcom/iflytek/blc/log/OpLogProxy;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/iflytek/blc/log/OpLogProxy;->nativeAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public static addEventWithTime(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iflytek/blc/log/LogPriority;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v11}, Lcom/iflytek/blc/log/OpLogProxy;->addEventWithTime(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static addEventWithTime(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iflytek/blc/log/LogPriority;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/DateFormat;->toString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v3}, Lcom/iflytek/blc/util/DateFormat;->toString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p7

    invoke-static {v0, v1, v4}, Lcom/iflytek/blc/log/OpLogProxy;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v7, v5, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_0
    invoke-static/range {p8 .. p8}, Lcom/iflytek/blc/util/LogUtil;->priority2Int(Lcom/iflytek/blc/log/LogPriority;)I

    move-result v8

    invoke-static/range {p9 .. p9}, Lcom/iflytek/blc/log/OpLogProxy;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v10, p10

    invoke-static/range {v1 .. v10}, Lcom/iflytek/blc/log/OpLogProxy;->nativeAddEventWithTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static endEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, v2, v3}, Lcom/iflytek/blc/log/OpLogProxy;->a(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    invoke-static {p0, p1, p2, v1, v0}, Lcom/iflytek/blc/log/OpLogProxy;->nativeEndEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private static native nativeAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeAddEventWithTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeEndEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private static native nativeStartEvent(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static startEvent(Ljava/lang/String;Lcom/iflytek/blc/log/LogPriority;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/iflytek/blc/util/LogUtil;->priority2Int(Lcom/iflytek/blc/log/LogPriority;)I

    move-result v0

    invoke-static {v2}, Lcom/iflytek/blc/log/OpLogProxy;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Lcom/iflytek/blc/log/OpLogProxy;->nativeStartEvent(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startEvent(Ljava/lang/String;Lcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iflytek/blc/log/LogPriority;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/iflytek/blc/util/LogUtil;->priority2Int(Lcom/iflytek/blc/log/LogPriority;)I

    move-result v0

    invoke-static {p2}, Lcom/iflytek/blc/log/OpLogProxy;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lcom/iflytek/blc/log/OpLogProxy;->nativeStartEvent(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
