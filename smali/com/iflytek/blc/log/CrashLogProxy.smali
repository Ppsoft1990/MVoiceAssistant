.class public Lcom/iflytek/blc/log/CrashLogProxy;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCrashMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/log/LogPriority;)V
    .locals 7

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/iflytek/blc/util/StringUtil;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/iflytek/blc/util/StringUtil;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/iflytek/blc/log/CrashLogProxy;->addCrashMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static addCrashMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    const/4 v5, 0x0

    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {p5, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/iflytek/blc/util/StringUtil;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/iflytek/blc/util/StringUtil;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Lcom/iflytek/blc/util/LogUtil;->priority2Int(Lcom/iflytek/blc/log/LogPriority;)I

    move-result v4

    move-object v0, p0

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/iflytek/blc/log/CrashLogProxy;->nativeAddCrashMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeAddCrashMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
.end method
