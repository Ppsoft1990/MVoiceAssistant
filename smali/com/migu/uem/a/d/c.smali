.class public final Lcom/migu/uem/a/d/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/migu/uem/a/d/c;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/migu/uem/a/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/migu/uem/a/d/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/a/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/a/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/a/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide v2, p0, Lcom/migu/uem/a/d/c;->f:J

    iput-wide v2, p0, Lcom/migu/uem/a/d/c;->g:J

    iput-wide v2, p0, Lcom/migu/uem/a/d/c;->h:J

    return-void
.end method

.method public static a()Lcom/migu/uem/a/d/c;
    .locals 2

    sget-object v0, Lcom/migu/uem/a/d/c;->a:Lcom/migu/uem/a/d/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/migu/uem/a/d/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/migu/uem/a/d/c;->a:Lcom/migu/uem/a/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/a/d/c;

    invoke-direct {v0}, Lcom/migu/uem/a/d/c;-><init>()V

    sput-object v0, Lcom/migu/uem/a/d/c;->a:Lcom/migu/uem/a/d/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/migu/uem/a/d/c;->a:Lcom/migu/uem/a/d/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/migu/uem/a/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/migu/uem/a/d/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/migu/uem/a/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/migu/uem/a/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;I)V
    .locals 8

    const-wide/32 v6, 0x57e40

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "1"

    and-int/lit8 v1, p2, 0x1f

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_2

    const-string/jumbo v0, "1"

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/migu/uem/a/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v4, p0, Lcom/migu/uem/a/d/c;->f:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-gtz v1, :cond_4

    const-string/jumbo v0, "\u6709\u4e0a\u4f20\u4efb\u52a1\u6b63\u5728\u6267\u884c,\u672c\u6b21\u4e0d\u4e0a\u4f20"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    and-int/lit8 v1, p2, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    and-int/lit8 v1, p2, 0x1

    if-ne v1, v3, :cond_3

    :try_start_1
    const-string/jumbo v0, "2"

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    and-int/lit8 v1, p2, 0x1

    if-ne v1, v3, :cond_0

    const-string/jumbo v0, "3"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "\u5168\u90e8\u6570\u636e\u4e0a\u4f20\u89e3\u9501"

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/migu/uem/a/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-wide v4, p0, Lcom/migu/uem/a/d/c;->g:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-gtz v1, :cond_6

    const-string/jumbo v0, "\u6709\u4e8b\u4ef6\u6570\u636e\u4e0a\u4f20\u4efb\u52a1\u6b63\u5728\u6267\u884c,\u672c\u6b21\u4e0d\u4e0a\u4f20"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    const-string/jumbo v1, "\u4e8b\u4ef6\u6570\u636e\u4e0a\u4f20\u89e3\u9501"

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/migu/uem/a/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-wide v4, p0, Lcom/migu/uem/a/d/c;->h:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-gtz v1, :cond_8

    const-string/jumbo v0, "\u6709\u9875\u9762\u6570\u636e\u4e0a\u4f20\u4efb\u52a1\u6b63\u5728\u6267\u884c,\u672c\u6b21\u4e0d\u4e0a\u4f20"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "\u9875\u9762\u6570\u636e\u4e0a\u4f20\u89e3\u9501"

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :cond_9
    invoke-static {p1}, Lcom/migu/uem/a/a/b;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v0, "network not available ..."

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/migu/uem/a/j;->a()Lcom/migu/uem/a/j;

    move-result-object v1

    new-instance v2, Lcom/migu/uem/a/a/f;

    new-instance v3, Lcom/migu/uem/a/d/d;

    invoke-direct {v3, p0, p2, p1}, Lcom/migu/uem/a/d/d;-><init>(Lcom/migu/uem/a/d/c;ILandroid/content/Context;)V

    invoke-direct {v2, p1, p2, v3}, Lcom/migu/uem/a/a/f;-><init>(Landroid/content/Context;ILcom/migu/uem/a/d/a;)V

    invoke-virtual {v1, v2}, Lcom/migu/uem/a/j;->a(Lcom/migu/uem/a/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/migu/uem/a/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/migu/uem/a/d/c;->f:J

    :cond_b
    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/migu/uem/a/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/migu/uem/a/d/c;->g:J

    :cond_c
    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/a/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/migu/uem/a/d/c;->h:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x1f

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "------------\u7c7b\u578b"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4e0a\u4f20\u5931\u8d25 ---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string/jumbo v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v2, "lastQuestTime_all"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v2, "uploadFailedNumber_all"

    invoke-virtual {v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "uploadFailedNumber_all"

    invoke-virtual {v2, v3, v1}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7c7b\u578b"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5931\u8d25\u91cd\u4f20\u6b21\u6570"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    const-string/jumbo v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string/jumbo v2, "3"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v2, "lastQuestTime_page"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v2, "uploadFailedNumber_page"

    invoke-virtual {v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "uploadFailedNumber_page"

    invoke-virtual {v2, v3, v1}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v2, "lastQuestTime_event"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v2, "uploadFailedNumber_event"

    invoke-virtual {v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "uploadFailedNumber_event"

    invoke-virtual {v2, v3, v1}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "3"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x5

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto :goto_1
.end method
