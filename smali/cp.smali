.class public Lcp;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/a/a/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/a/a/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lco;

.field private final e:Lcx;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcz;->b:Z

    sput-boolean v0, Lcp;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lco;Lcx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/a/a/n",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/a/a/n",
            "<*>;>;",
            "Lco;",
            "Lcx;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcp;->f:Z

    iput-object p1, p0, Lcp;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcp;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcp;->d:Lco;

    iput-object p4, p0, Lcp;->e:Lcx;

    return-void
.end method

.method static synthetic a(Lcp;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcp;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcp;->f:Z

    invoke-virtual {p0}, Lcp;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Lcp;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "start new dispatcher"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcp;->d:Lco;

    invoke-interface {v0}, Lco;->a()V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcp;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/a/a/n;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcn/a/a/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/a/a/n;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcn/a/a/n;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unhandled exception %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcz;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcp;->f:Z

    if-eqz v0, :cond_1

    return-void

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcp;->d:Lco;

    invoke-virtual {v0}, Lcn/a/a/n;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lco;->a(Ljava/lang/String;)Lco$a;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcn/a/a/n;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcp;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lco$a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Lcn/a/a/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/a/a/n;->a(Lco$a;)Lcn/a/a/n;

    iget-object v1, p0, Lcp;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "cache-hit"

    invoke-virtual {v0, v2}, Lcn/a/a/n;->a(Ljava/lang/String;)V

    new-instance v2, Lcn/a/a/j;

    iget-object v3, v1, Lco$a;->a:[B

    iget-object v4, v1, Lco$a;->g:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcn/a/a/j;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcn/a/a/n;->a(Lcn/a/a/j;)Lcw;

    move-result-object v2

    const-string/jumbo v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Lcn/a/a/n;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lco$a;->b()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p0, Lcp;->e:Lcx;

    invoke-interface {v1, v0, v2}, Lcx;->a(Lcn/a/a/n;Lcw;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Lcn/a/a/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/a/a/n;->a(Lco$a;)Lcn/a/a/n;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcw;->d:Z

    iget-object v1, p0, Lcp;->e:Lcx;

    new-instance v3, Lcp$1;

    invoke-direct {v3, p0, v0}, Lcp$1;-><init>(Lcp;Lcn/a/a/n;)V

    invoke-interface {v1, v0, v2, v3}, Lcx;->a(Lcn/a/a/n;Lcw;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
