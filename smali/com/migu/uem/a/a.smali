.class public final Lcom/migu/uem/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/migu/uem/a/a;


# instance fields
.field private b:Lcom/migu/uem/a/b;

.field private c:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/migu/uem/a/a;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method public static a()Lcom/migu/uem/a/a;
    .locals 2

    sget-object v0, Lcom/migu/uem/a/a;->a:Lcom/migu/uem/a/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/migu/uem/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/migu/uem/a/a;->a:Lcom/migu/uem/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/a/a;

    invoke-direct {v0}, Lcom/migu/uem/a/a;-><init>()V

    sput-object v0, Lcom/migu/uem/a/a;->a:Lcom/migu/uem/a/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/migu/uem/a/a;->a:Lcom/migu/uem/a/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/migu/uem/a/a;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/a;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/migu/uem/a/f;)Z
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/migu/uem/a/a;->c:Ljava/util/concurrent/ArrayBlockingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/migu/uem/a/a;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/migu/uem/a/a;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/migu/uem/a/a;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/migu/uem/a/a;->b:Lcom/migu/uem/a/b;

    if-nez v1, :cond_1

    new-instance v1, Lcom/migu/uem/a/b;

    invoke-direct {v1, p0}, Lcom/migu/uem/a/b;-><init>(Lcom/migu/uem/a/a;)V

    iput-object v1, p0, Lcom/migu/uem/a/a;->b:Lcom/migu/uem/a/b;

    iget-object v1, p0, Lcom/migu/uem/a/a;->b:Lcom/migu/uem/a/b;

    invoke-virtual {v1}, Lcom/migu/uem/a/b;->a()V

    iget-object v1, p0, Lcom/migu/uem/a/a;->b:Lcom/migu/uem/a/b;

    invoke-virtual {v1}, Lcom/migu/uem/a/b;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v1, p0, Lcom/migu/uem/a/a;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
