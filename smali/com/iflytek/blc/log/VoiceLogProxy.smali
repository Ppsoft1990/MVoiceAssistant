.class public Lcom/iflytek/blc/log/VoiceLogProxy;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native endLocalRecognize()V
.end method

.method public static native endOnlineRecognize()V
.end method

.method public static native endRecord()V
.end method

.method public static endSession(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/blc/log/VoiceLogProxy;->endSession(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static endSession(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v4, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_1
    invoke-static {p3}, Lcom/iflytek/blc/util/LogUtil;->priority2Int(Lcom/iflytek/blc/log/LogPriority;)I

    move-result v4

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {p4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string/jumbo v0, "BLC-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "list2Array | "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/iflytek/blc/log/VoiceLogProxy;->endSession(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v3, v5

    move-object v2, v5

    goto :goto_1
.end method

.method private static native endSession(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native firstLocalResult()V
.end method

.method public static native firstOnlineResult()V
.end method

.method public static native lastLocalResult()V
.end method

.method public static native lastOnlineResult()V
.end method

.method public static native startLocalRecognize()V
.end method

.method public static native startOnlineRecognize()V
.end method

.method public static native startRecord()V
.end method

.method private static native startSession(ILjava/lang/String;)V
.end method

.method public static startSession(Lcom/iflytek/blc/log/VoiceSessionType;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/blc/log/VoiceSessionType;->ordinal()I

    move-result v0

    :cond_0
    invoke-static {v0, p1}, Lcom/iflytek/blc/log/VoiceLogProxy;->startSession(ILjava/lang/String;)V

    return-void
.end method
