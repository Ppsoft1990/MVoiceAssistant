.class public Lcom/iflytek/blc/log/AttachedLogProxy;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/log/LogPriority;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0, p2, v1, v1}, Lcom/iflytek/blc/log/AttachedLogProxy;->add(Ljava/lang/String;[BLcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static add(Ljava/lang/String;[BLcom/iflytek/blc/log/LogPriority;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/iflytek/blc/log/AttachedLogProxy;->add(Ljava/lang/String;[BLcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static add(Ljava/lang/String;[BLcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/iflytek/blc/log/LogPriority;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Lcom/iflytek/blc/util/LogUtil;->priority2Int(Lcom/iflytek/blc/log/LogPriority;)I

    move-result v1

    invoke-static {p0, p1, v1, v0, p4}, Lcom/iflytek/blc/log/AttachedLogProxy;->nativeAdd(Ljava/lang/String;[BI[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeAdd(Ljava/lang/String;[BI[Ljava/lang/String;Ljava/lang/String;)V
.end method
