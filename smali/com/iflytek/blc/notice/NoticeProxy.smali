.class public Lcom/iflytek/blc/notice/NoticeProxy;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 1

    sget v0, Lcom/iflytek/blc/notice/NoticeProxy;->a:I

    if-eqz v0, :cond_0

    sget v0, Lcom/iflytek/blc/notice/NoticeProxy;->a:I

    invoke-static {v0}, Lcom/iflytek/blc/notice/NoticeProxy;->nativeCancel(I)V

    const/4 v0, 0x0

    sput v0, Lcom/iflytek/blc/notice/NoticeProxy;->a:I

    :cond_0
    return-void
.end method

.method private static native nativeCancel(I)V
.end method

.method private static native nativeStart(Lcom/iflytek/blc/notice/NoticeObserver;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public static start(Lcom/iflytek/blc/notice/NoticeObserver;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/iflytek/blc/notice/NoticeProxy;->start(Lcom/iflytek/blc/notice/NoticeObserver;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public static start(Lcom/iflytek/blc/notice/NoticeObserver;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/blc/notice/NoticeObserver;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget v2, Lcom/iflytek/blc/notice/NoticeProxy;->a:I

    if-eqz v2, :cond_0

    sget v2, Lcom/iflytek/blc/notice/NoticeProxy;->a:I

    invoke-static {v2}, Lcom/iflytek/blc/notice/NoticeProxy;->nativeCancel(I)V

    sput v0, Lcom/iflytek/blc/notice/NoticeProxy;->a:I

    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    :cond_1
    move-object v0, v3

    move-object v1, v4

    :goto_1
    invoke-static {p0, p1, p2, v1, v0}, Lcom/iflytek/blc/notice/NoticeProxy;->nativeStart(Lcom/iflytek/blc/notice/NoticeObserver;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/blc/notice/NoticeProxy;->a:I

    return v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
